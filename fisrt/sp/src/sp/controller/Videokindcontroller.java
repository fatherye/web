package sp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import sp.beans.Gift;
import sp.beans.VideoWithBLOBs;
import sp.beans.Videokind;
import sp.service.Giftservice;
import sp.service.Videokindservice;
import sp.service.Videoservice;



@SessionAttributes(value={"videokind","Giftshop"},types={String.class})
@Controller
public class Videokindcontroller {
	@Autowired
	Videokindservice videokindservice;
	@Autowired
	Giftservice giftservice;
	@Autowired
	Videoservice videoservice;
	
	@RequestMapping("home")
	public String getkindandgift(Model m) throws Exception{
		List<Videokind> kind=videokindservice.findallkind();
		List<Gift> Giftshop=giftservice.findallgift();
		List<VideoWithBLOBs> videonewlist=videoservice.findbythenewest();
		//System.out.println(videonewlist.size());
		List<VideoWithBLOBs> videohotlist=videoservice.findbythehotest();
		//System.out.println(videohotlist.size());
		List<VideoWithBLOBs> videolearnhotlist=videoservice.findbythelearnhot();
		//System.out.println(videolearnhotlist.size());
		List<VideoWithBLOBs> videolearnrandlist=videoservice.findbytherandomlearn();
		//System.out.println(videolearnrandlist.size());
		m.addAttribute("Giftshop",Giftshop);
		m.addAttribute("videokind",kind);
		m.addAttribute("videonewlist", videonewlist);
		m.addAttribute("videohotlist", videohotlist);
		m.addAttribute("videolearnhotlist", videolearnhotlist);
		m.addAttribute("videolearnrandlist", videolearnrandlist);
		return "home";
	}
}
