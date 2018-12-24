package sp.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import sp.beans.Comment;
import sp.beans.Gift;
import sp.beans.Manager;
import sp.beans.Text;
import sp.beans.UserWithBLOBs;
import sp.beans.VideoWithBLOBs;
import sp.service.Commentservice;
import sp.service.Dummpservice;
import sp.service.Giftservice;
import sp.service.Managerservice;
import sp.service.Textservice;
import sp.service.Userservice;
import sp.service.Videoservice;

@SessionAttributes(value={"manager"})
@Controller
public class Managercontroller {
	@Autowired
	Managerservice managerservice;
	@Autowired
	Userservice userservice;
	@Autowired
	Videoservice videoservice;
	@Autowired
	Commentservice commentservice;
	@Autowired
	Textservice textservice;
	@Autowired
	Dummpservice dummpservice;
	@Autowired
	Giftservice giftservice;
	
	
	@RequestMapping(value="domanagerlogin",method=RequestMethod.POST)
	public String domanagerlogin(Manager manager,Model m,Map<String,Object> map){
		List<Manager> check=managerservice.findmanagerbyaccount(manager.getManagerAccount());
		if(check.size()==0){
			map.put("message", "密码或账号输入错误");
			return "info";
		}
		if(check.get(0).getManagerPassword().equals(manager.getManagerPassword())){
			m.addAttribute("manager", check.get(0));
			return "manager";
		}
		map.put("message", "密码或账号输入错误");
		return "info";
	}
	
	
	@RequestMapping("loginoutmanager")
	public String logout(HttpSession session,SessionStatus sessionStatus,Map<String,Object> map){
	
		if (session != null){
			//session中移除user 销毁session 可是我用了SessionAttributes来存储，所以这两句没用
            session.removeAttribute("manager");
            session.invalidate();
            //
            sessionStatus.setComplete();
		}
		map.put("message", "你已经退出账号");
		return "info";
	}
	
	
	@RequestMapping("findallvideo")
	@ResponseBody
	public PageInfo findallvideo(@RequestParam(value="pn",defaultValue="1")int pn){
		PageHelper.startPage(pn,12);
		List<VideoWithBLOBs> videoWithBLOBs=videoservice.findallorderbybad();
		PageInfo videolist=new PageInfo(videoWithBLOBs);
		return videolist;
	}
	
	
	@RequestMapping("findalluser")
	@ResponseBody
	public PageInfo findalluser(@RequestParam(value="pn",defaultValue="1")int pn){
		PageHelper.startPage(pn,12);
		List<UserWithBLOBs> userWithBLOBs=userservice.findalluserorderbybad();
		PageInfo userlist=new PageInfo(userWithBLOBs);
		return userlist;
	}
	
	@RequestMapping("findallcomment")
	@ResponseBody
	public PageInfo findallcomment(@RequestParam(value="pn",defaultValue="1")int pn){
		PageHelper.startPage(pn,12);
		List<Comment> comments=commentservice.findallcommentbybad();
//		for (int i = 0; i < comments.size(); i++) {
//			Date date=new Date();
//			date.setDate(date);
//			comments.get(i).setCommentDate(Date();
//		}
		PageInfo commentlist=new PageInfo(comments);
		return commentlist;
	}
	
	@RequestMapping("findalltext")
	@ResponseBody
	public PageInfo findalltext(@RequestParam(value="pn",defaultValue="1")int pn){
		PageHelper.startPage(pn,12);
		List<Text> text=textservice.findalltext();
		PageInfo textlist=new PageInfo(text);
		return textlist;
	}
	
	
	@RequestMapping("findallmanager")
	@ResponseBody
	public PageInfo findallmanager(@RequestParam(value="pn",defaultValue="1")int pn){
		PageHelper.startPage(pn,12);
		List<Manager> manager=managerservice.findallmanagerbylevel();
		PageInfo managerlist=new PageInfo(manager);
		return managerlist;
	}
	
	
	@RequestMapping("findallgift")
	@ResponseBody
	public PageInfo findallgift(@RequestParam(value="pn",defaultValue="1")int pn){
		PageHelper.startPage(pn,12);
		List<Gift> gift=giftservice.findallgift();
		PageInfo giftlist=new PageInfo(gift);
		return giftlist;
	}
	
	
	
	
	@RequestMapping("mcommentdele")
	@ResponseBody
	public int mcommentdele(@RequestParam(value="commentId")int commentId){
		int success=1;
		int lost=0;
		int count=0;
		count=commentservice.deletecommentbyid(commentId);
		if(count==1){
			return success;
		}
		return lost;
	}
	
	@RequestMapping("mstopuser")
	@ResponseBody
	public int stopuser(@RequestParam(value="userId")int userId){
		int success=1;
		int lost=0;
		int count=0;
		UserWithBLOBs userWithBLOBs=userservice.finduserbyid(userId);
		userWithBLOBs.setUserStatement(10000);
		count=userservice.report(userWithBLOBs);
		if(count==1){
			return success;
		}
		return lost;
	}
	
	
	@RequestMapping("mupuser")
	@ResponseBody
	public int upuser(@RequestParam(value="userId")int userId){
		int success=1;
		int lost=0;
		int count=0;
		UserWithBLOBs userWithBLOBs=userservice.finduserbyid(userId);
		userWithBLOBs.setUserStatement(0);
		count=userservice.report(userWithBLOBs);
		if(count==1){
			return success;
		}
		return lost;
	}
	
	
	@RequestMapping("mtextdele")
	@ResponseBody
	public int mtextdele(@RequestParam(value="textId")int textId){
		int success=1;
		int lost=0;
		int count=0;
		int count2=0;
		count=textservice.deletetext(textId);
		count2=commentservice.deletebytextid(textId);
		if(count==1&&count2==1){
			return success;
		}
		return lost;
	}
	
	@RequestMapping("mvideodele")
	@ResponseBody
	public int mvideodele(@RequestParam(value="videoId")int videoId){
		int success=1;
		int lost=0;
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
		id=image_file.delete();
		if(count==1&&count2==1&&vd&&id){
			return success;
		}
		return lost;
	}
	
	
	@RequestMapping("mmanagerdele")
	@ResponseBody
	public int mmanagerdele(@RequestParam(value="managerId")int managerId){
		int success=1;
		int lost=0;
		int count=0;
		count=managerservice.delemanagerbymanagerid(managerId);
		if(count==1){
			return success;
		}
		return lost;
	}
	
	
	@RequestMapping(value="addmanager",method=RequestMethod.POST)
	@ResponseBody
	public int addmanager(@RequestParam(value="managerAccount")String managerAccount,
			@RequestParam(value="managerName")String managerName,
			@RequestParam(value="managerPassword")String managerPassword,
			@RequestParam(value="managerEmail")String managerEmail,
			@RequestParam(value="managerPhone")String managerPhone,
			@RequestParam(value="managerRoot")int managerRoot){
		int success=1;
		int lost=0;
		int count=0;
		
		Manager manager=new Manager();
		manager.setManagerAccount(managerAccount);
		manager.setManagerEmail(managerEmail);
		manager.setManagerName(managerName);
		manager.setManagerPassword(managerPassword);
		manager.setManagerPhone(managerPhone);
		manager.setManagerRoot(managerRoot);
		count=managerservice.insertmanager(manager);
		if(count==1){
			return success;
		}
		return lost;
	}
	
	@RequestMapping(value="addgift",method=RequestMethod.POST)
	@ResponseBody
	public int addgift(@RequestParam(value="giftName")String giftName,
			@RequestParam(value="giftGrade")int giftGrade,
			@RequestBody MultipartFile file)throws Exception{
		int success=1;
		int lost=0;
		int count=0;
		System.out.println(giftName);
		System.out.println(giftGrade);
		
		String type=file.getContentType();
		System.out.println(type);
		if(!type.equals("image/png")&&!type.equals("image/jpg")&&!type.equals("image/jpeg")){
			return lost;
		}
		
		
		String imagename=file.getOriginalFilename();
		String imageurl="D:/垃圾池/workplace/sp/WebContent/image/"+imagename;
		String giftImage="image/"+imagename;
		
		Gift gift=new Gift();
		gift.setGiftGrade(giftGrade);
		gift.setGiftName(giftName);
		gift.setGiftImage(giftImage);
		count=giftservice.addgift(gift);
		if(count==1){
			file.transferTo(new File(imageurl));
			return success;
		}
		return lost;
	}
	
	
	@RequestMapping("findamanager")
	@ResponseBody
	public Manager findmanager(@RequestParam(value="managerId")int managerId){
		Manager manager=managerservice.findmanagerbyid(managerId);	
		return manager;
	}
	
	@RequestMapping("changemanager")
	@ResponseBody
	public int changemanager(@RequestParam(value="managerAccount")String managerAccount,
			@RequestParam(value="managerName")String managerName,
			@RequestParam(value="managerEmail")String managerEmail,
			@RequestParam(value="managerPhone")String managerPhone,
			@RequestParam(value="managerRoot")int managerRoot){
		int success=1;
		int lost=0;
		int count=0;
		Manager manager=new Manager();
		manager.setManagerAccount(managerAccount);
		manager.setManagerEmail(managerEmail);
		manager.setManagerName(managerName);
		manager.setManagerPhone(managerPhone);
		manager.setManagerRoot(managerRoot);
		count=managerservice.updatemanager(manager);
		if(count==1){
			return success;
		}
		return lost;
	}
	
	@RequestMapping("findagift")
	@ResponseBody
	public Gift findagift(@RequestParam(value="giftId")int giftId){
		Gift gift=giftservice.findagift(giftId);
		return gift;
	}
	
	
	
	@RequestMapping(value="changegift",method=RequestMethod.POST)
	@ResponseBody
	public int changegift(@RequestParam(value="giftName")String giftName,
			@RequestParam(value="giftGrade")int giftGrade,
			@RequestBody MultipartFile file)throws Exception{
		int success=1;
		int lost=0;
		int count=0;
		System.out.println(giftName);
		System.out.println(giftGrade);
		
		String type=file.getContentType();
		System.out.println(type);
		if(!type.equals("image/png")&&!type.equals("image/jpg")&&!type.equals("image/jpeg")){
			return lost;
		}
		
		
		String imagename=file.getOriginalFilename();
		String imageurl="D:/垃圾池/workplace/sp/WebContent/image/"+imagename;
		String giftImage="image/"+imagename;
		
		Gift gift=new Gift();
		gift.setGiftGrade(giftGrade);
		gift.setGiftName(giftName);
		gift.setGiftImage(giftImage);
		count=giftservice.updategift(gift);
		if(count==1){
			file.transferTo(new File(imageurl));
			return success;
		}
		return lost;
	}
}
