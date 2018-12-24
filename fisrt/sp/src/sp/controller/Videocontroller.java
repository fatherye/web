package sp.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import sp.beans.Giftkeeper;
import sp.beans.Smsg;
import sp.beans.UserWithBLOBs;
import sp.beans.VideoWithBLOBs;
import sp.beans.Videokind;
import sp.service.Dummpservice;
import sp.service.Giftkeeperservice;
import sp.service.Smsgservice;
import sp.service.Userservice;
import sp.service.Videokindservice;
import sp.service.Videoservice;




@Controller
public class Videocontroller {
	@Autowired
	Videoservice videoservice;
	@Autowired
	Giftkeeperservice giftkeeperservice;
	@Autowired
	Userservice userservice;
	@Autowired
	Smsgservice smsgservice;
	@Autowired
	Dummpservice dummpservice;
	@Autowired
	Videokindservice videokindservice;
	
	

	@RequestMapping(value="uservideo")
	public String uservideo(@RequestParam(value="pn",defaultValue="1")int pn,
			@RequestParam(value="userId")int userId,
			Map<String,Object> map,
			Model m){
		PageHelper.startPage(pn,8);
		List<VideoWithBLOBs> video=videoservice.findvideobyuserid(userId);
		PageInfo videolist=new PageInfo(video);
		List<Videokind> videokindlist=videokindservice.findallkind();
		m.addAttribute("videolist",videolist);
		m.addAttribute("videokindlist",videokindlist);
		map.put("VUmsg",userId );
		return "uservideo";
	}
	
	@RequestMapping(value="videolist")
	public String findvideowithkind(@RequestParam(value="pn",defaultValue="1")int pn,
			@RequestParam(value="videokindId")int videokindId,
			@RequestParam(value="videokindName")String videokindName,
			Model m,
			Map<String,Object> map){
		PageHelper.startPage(pn,12);
		List<VideoWithBLOBs> videoWithBLOBs=videoservice.findvideobyvideokindId(videokindId);
		PageInfo videolist=new PageInfo(videoWithBLOBs);
		map.put("videokindId", videokindId);
		map.put("videokindName", videokindName);
		m.addAttribute("videolist", videolist);
		return "videolist";
	}
	
	@RequestMapping(value="videocontext")
	public String videocontext(@RequestParam(value="videoId")int videoId,@RequestParam(value="userId")int userId,Map<String,Object> map,Model m){
		VideoWithBLOBs videoWithBLOBs=videoservice.findvideobyvideoId(videoId);
		UserWithBLOBs userWithBLOBs=userservice.finduserbyid(userId);
		List<Giftkeeper> keeplist=giftkeeperservice.findgiftwithuserid(userId);
		
		videoWithBLOBs.setVideoCount(videoWithBLOBs.getVideoCount()+1);
		videoservice.reportvideo(videoWithBLOBs);
		m.addAttribute("keeplist", keeplist);
		map.put("auser", userWithBLOBs);
		map.put("video", videoWithBLOBs);
		return "videocontext";
	}
	
	
	
	
	
	@RequestMapping(value="fileupdate")
	public String addvideo(VideoWithBLOBs videoWithBLOBs,@RequestParam("videofile") MultipartFile[] file,Map<String,Object> map)throws IOException{
		Date date=new Date();
		Timestamp timestamp=new Timestamp(date.getTime());
		
		String videoon=file[0].getOriginalFilename();
		String isvideo=file[0].getContentType();
		String isimage=file[1].getContentType();
		
		if(!isvideo.equals("video/mp4")){
			map.put("userId",videoWithBLOBs.getUserId());
			map.put("message","上传失败,视频格式不合法，最好上传后缀名为mp4的文件");
			return "usermessageinfo";
		}
		if(!isimage.equals("image/png")&&!isimage.equals("image/jpg")&&!isimage.equals("image/jpeg")){
			map.put("userId",videoWithBLOBs.getUserId());
			map.put("message","上传失败,图片格式不合法，最好上传后缀名为png或jpg的文件");
			return "usermessageinfo";
		}
		
		String url="D:/垃圾池/workplace/sp/WebContent/video/"+videoon;
		String video_url="video/"+videoon;
	    String imageon = file[1].getOriginalFilename();
	    String image="D:/垃圾池/workplace/sp/WebContent/image/"+imageon;
	    String video_image="image/"+imageon;
		videoWithBLOBs.setVideoUrl(video_url);
		videoWithBLOBs.setVideoImage(video_image);
		if(videoWithBLOBs.getVideoImage()==null||videoWithBLOBs.getVideoUrl()==null||videoWithBLOBs.getVideoName()==null){
			map.put("userId",videoWithBLOBs.getUserId());
			map.put("message","上传失败");
			return "usermessageinfo";
		}
		videoWithBLOBs.setVideoDate(timestamp);
		int count=videoservice.addvideo(videoWithBLOBs);
		if(count==1){
			map.put("message","上传成功");
			map.put("userId",videoWithBLOBs.getUserId());
			file[0].transferTo(new File(url));
			file[1].transferTo(new File(image));
			return "usermessageinfo";
		}
		map.put("userId",videoWithBLOBs.getUserId());
		map.put("message","上传失败");
		return "usermessageinfo";
	}
	
	@RequestMapping("giftsend")
	@ResponseBody
	public int giftsend(@RequestParam("userId")int userId,
			@RequestParam("otherId")int otherId,
			@RequestParam("giftNumber")int giftNumber,
			@RequestParam("allgrade")int allgrade,
			@RequestParam("giftId")int giftId){
		int success=1;
		int count1=0;
		int count2=0;
		int lost=0;
		Giftkeeper giftkeeper=new Giftkeeper();
		//持有者记录更新
		giftkeeper.setGiftId(giftId);
		giftkeeper.setUserId(userId);
		giftkeeper.setGiftNumber(giftNumber);
		count1=giftkeeperservice.updaterecord(giftkeeper);
		//接受礼物并转换为积分
		UserWithBLOBs userWithBLOBs=userservice.finduserbyid(otherId);
		userWithBLOBs.setUserGrade(userWithBLOBs.getUserGrade()+allgrade);
		
		count2=userservice.giftpay(userWithBLOBs);
		
		if(count1==1&&count2==1){
			return success;
		}
		
		return lost;
	}
	
	@RequestMapping("reportvideo")
	@ResponseBody
	public int reportvideo(@RequestParam(value="videoId")int videoId,@RequestParam(value="userId")int userId){
		
		int success=1;
		int lost=0;
		int count1=0;
		int count2=0;
		int count3=0;
		//1.video状态回调
		VideoWithBLOBs videoWithBLOBs=videoservice.findvideobyvideoId(videoId);
		int videoStatement=videoWithBLOBs.getVideoStatement();
	    if(videoStatement>=500){
	    	videoWithBLOBs.setVideoStatement(videoStatement+1);
	    }
	    else{
	    	videoWithBLOBs.setVideoStatement(500);
	    }
	    count1=videoservice.reportvideo(videoWithBLOBs);
	    //2.user状态回调
	    UserWithBLOBs userWithBLOBs=userservice.finduserbyid(userId);
	    int userStatement=userWithBLOBs.getUserStatement();
	    userWithBLOBs.setUserStatement(userStatement+1);
	    count2=userservice.report(userWithBLOBs);
	    //3.系统信息
	    Smsg smsg=new Smsg();
	    smsg.setSmsgText("你的视频名为"+videoWithBLOBs.getVideoName()+"被举报了，请检查其内容，必要时请自行删除");
	    smsg.setUserId(userId);
	    count3=smsgservice.addSystemmessage(smsg);
	    if(count1==1&&count2==1&&count3==1){
	    	return success;
	    }
		return lost;
		
		
		
		
	}
	
	 @RequestMapping(value="download")
	 @ResponseBody
	 public ResponseEntity<byte[]> download(@RequestParam(value="videoId") int videoId) throws IOException{
		     VideoWithBLOBs videoWithBLOBs=videoservice.findvideobyvideoId(videoId);
		     File video_file=new File("D:/垃圾池/workplace/sp/WebContent/"+videoWithBLOBs.getVideoUrl());
		     String filename=new String(video_file.getName().getBytes("utf-8"),"ISO-8859-1");//防止中文乱码
		     //设置请求头内容,告诉浏览器代开下载窗口
		     HttpHeaders headers=new HttpHeaders();
		     headers.setContentDispositionFormData("attachment",filename );
		     headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			 return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(video_file),headers,HttpStatus.CREATED);
	 }
	 
	 @RequestMapping("deletemyvideobyid")
	 public String deletemyvideobyid(@RequestParam(value="videoId") int videoId,
			 @RequestParam(value="userId") int userId,
			 Map<String,Object> map){
			int count=0;
			int count2=0;
			boolean vd=false;
			boolean id=false;
			VideoWithBLOBs videoWithBLOBs=videoservice.findvideobyvideoId(videoId);
			
			File video_file=new File("D:/垃圾池/workplace/sp/WebContent/"+videoWithBLOBs.getVideoUrl());
	        File image_file=new File("D:/垃圾池/workplace/sp/WebContent/"+videoWithBLOBs.getVideoImage());
	        count=videoservice.deletevideobyid(videoId);
			count2=dummpservice.deledummpbyvideoId(videoId);
			vd=video_file.delete();
			System.out.print(vd);
			
			id=image_file.delete();
			System.out.print(id);
			if(count==1||count2==1&&vd&&id){
				map.put("message", "删除成功");
				map.put("userId", userId);
				return "usermessageinfo";
			}
			map.put("message", "删除失败");
			map.put("userId", userId);
			return "usermessageinfo";
		 
	 }
}
