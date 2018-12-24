package sp.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import sp.beans.Comment;
import sp.beans.Dummp;

import sp.service.Dummpservice;
import sp.util.Urlutil;





@Controller
public class Dummpcontroller {
	@Autowired
	Dummpservice dummpservice;
	
	
	
	
	@RequestMapping(value="dummpsent",method=RequestMethod.POST)
	public void dummpsent(@RequestParam(value="videoId")int videoId,@RequestParam(value="userId")int userId,@RequestBody String textObj){
		Urlutil url=new Urlutil();
		String danmu=url.getURLDecoderString(textObj);
		//System.out.println(url.getURLDecoderString(textObj));
		String d[]=danmu.split(",");
		String text=d[0].split(":")[1].substring(1, d[0].split(":")[1].length()-1);
		//System.out.println(text);
		String color=d[1].split(":")[1].substring(1, d[1].split(":")[1].length()-1);
		//System.out.println(color);
		int size=Integer.parseInt(d[2].split(":")[1].substring(1, d[2].split(":")[1].length()-1));
		//System.out.println(size);
		int position=Integer.parseInt(d[3].split(":")[1].substring(1, d[3].split(":")[1].length()-1));
		//System.out.println(position);
		int time=Integer.parseInt(d[4].split(":")[1].substring(1, d[4].split(":")[1].length()-1));
		//System.out.println(time);
		
		Dummp dummp=new Dummp();
		dummp.setDummpColor(color);
		dummp.setDummpPosition(position);
		dummp.setDummpSize(size);
		dummp.setDummpText(text);
		dummp.setDummpTime(time);
		dummp.setUserId(userId);
		dummp.setVideoId(videoId);
		dummpservice.dummpsent(dummp);
//		int position=request.getParameter("position");
//		int size=request.getParameter("color");
//		int time=request.getParameter("color");
		
		
		
	}
	
	@RequestMapping(value="dummpget")
	@ResponseBody
	public String dummpget(@RequestParam(value="videoId")int videoId,Map<String,Object> map){
		List<Dummp> dummplist=dummpservice.finddummpbyvideoId(videoId);
		String danmu="danmu=";
		String jsonString="[";
		if(dummplist.size()==1){
			jsonString=jsonString+"\'{\"text\":\""
					+dummplist.get(0).getDummpText()+"\",\"color\":\""
					+dummplist.get(0).getDummpColor()+"\",\"size\":\""
					+dummplist.get(0).getDummpSize()+"\",\"position\":\""
					+dummplist.get(0).getDummpColor()+"\",\"time\":\""
					+dummplist.get(0).getDummpTime()+"}\']";
		}
		else{
			for (int i = 0,len=dummplist.size(); i < len; i++) {
				if(i==len-1){
					jsonString=jsonString+"\'{\"text\":\""
							+dummplist.get(i).getDummpText()+"\",\"color\":\""
							+dummplist.get(i).getDummpColor()+"\",\"size\":\""
							+dummplist.get(i).getDummpSize()+"\",\"position\":\""
							+dummplist.get(i).getDummpPosition()+"\",\"time\":"
							+dummplist.get(i).getDummpTime()+"}\']";
				}else{
					if(i==0){
						jsonString=jsonString+"\'{\"text\":\""
								+dummplist.get(i).getDummpText()+"\",\"color\":\""
								+dummplist.get(i).getDummpColor()+"\",\"size\":\""
								+dummplist.get(i).getDummpSize()+"\",\"position\":\""
								+dummplist.get(i).getDummpPosition()+"\",\"time\":"
								+dummplist.get(i).getDummpTime()+"}\',";
					}else{
						jsonString=jsonString+"\'{\"text\":\""
								+dummplist.get(i).getDummpText()+"\",\"color\":\""
								+dummplist.get(i).getDummpColor()+"\",\"size\":\""
								+dummplist.get(i).getDummpSize()+"\",\"position\":\""
								+dummplist.get(i).getDummpPosition()+"\",\"time\":"
								+dummplist.get(i).getDummpTime()+"}\',";
					}
				}
			}
		}
		
		
	
		return jsonString;
	}
	
	
	@RequestMapping("dummp")
	public String dummpshow(@RequestParam(value="videoId")int videoId,Map<String,Object> map){
		
		map.put("vi",videoId);
		return "dummp";
	}

	@RequestMapping("dummpshow")
	@ResponseBody
	public List<Dummp> dummpshow(@RequestParam(value="videoId")int videoId){
		List<Dummp> dummplist=dummpservice.finddummpbyvideoIdwith(videoId);
		
		return dummplist;
	}
	
	
	
	
	
}
