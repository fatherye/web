package sp.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import sp.beans.Text;
import sp.beans.VideoWithBLOBs;
import sp.service.Textservice;
import sp.service.Videoservice;


@Controller
public class Selectcontroller {

	@Autowired
	Videoservice videoservice;
	@Autowired
	Textservice textservice;
	
	@RequestMapping(value="select",method=RequestMethod.POST)
	public String select(String word,String type,Model m,Map<String,Object> map){
		
	
		
		if(type.equals("video")){
			List<VideoWithBLOBs> videolist=videoservice.findbykeyword(word);
			m.addAttribute("svideolist", videolist);
			
			map.put("word",word );
			if(videolist.size()==0){
				map.put("word",word );
				map.put("message", "Sorry，我们找不到该关键字的任何信息。。。。");
				return "select";
			}
			
			return "selectvideo";
		}
		else if(type.equals("text")){
			List<Text> textlist=textservice.findtextbyword(word);
			m.addAttribute("stextlist", textlist);
			map.put("word",word );
			if(textlist.size()==0){
				map.put("word",word );
				map.put("message", "Sorry，我们找不到该关键字的任何信息。。。。");
				return "select";
			}
			return "selecttext";
		}
		map.put("message", "Sorry，我们找不到该关键字的任何信息。。。。");
		map.put("word",word );
		
		return "selecttext";
	}
}
