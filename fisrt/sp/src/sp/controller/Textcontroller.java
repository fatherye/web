package sp.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import sp.beans.Comment;

import sp.beans.Smsg;
import sp.beans.Text;

import sp.beans.UserWithBLOBs;
import sp.service.Commentservice;
import sp.service.Smsgservice;
import sp.service.Textservice;
import sp.service.Userservice;



@Controller
public class Textcontroller {
	@Autowired
	Textservice textservice;
	@Autowired
	Commentservice commentservice;
	@Autowired
	Userservice userservice;
	@Autowired
	Smsgservice Smsgservice;
	
	
	@RequestMapping(value="usertext")
	public String usertext(@RequestParam(value="pn",defaultValue="1")int pn,@RequestParam(value="userId")int userId,Map<String,Object> map,Model m){
		PageHelper.startPage(pn,8);
		List<Text> text=textservice.findtextbyuserid(userId);
		PageInfo<Text> textlist=new PageInfo<Text>(text);
		m.addAttribute("textlist",textlist);
		map.put("TUmsg", userId);
		return "usertext";
	}
	
	
	@RequestMapping(value="addtext",method=RequestMethod.POST)
	public String addtext(Text text,Map<String,Object> map){
		Date date=new Date();
		Timestamp timestamp=new Timestamp(date.getTime());
		text.setTextDate(timestamp);
		int count=textservice.addtext(text);
		if(count==1){
			map.put("message", "发表成功");
			map.put("userId", text.getUserId());
			return "usermessageinfo";
			
		}
		map.put("userId", text.getUserId());
		map.put("message", "发表失败");
		return "usermessageinfo";
	}
	
	
	@RequestMapping("textlist")
	public String findalltext(@RequestParam(value="pn",defaultValue="1")int pn,Model m){
		PageHelper.startPage(pn,8);
		List<Text> text=textservice.findalltext();
		PageInfo textlist=new PageInfo(text);
		m.addAttribute("alltextlist", textlist);
		return "textlist";
	}
	
	
	@RequestMapping(value="textcontext")
	public String findtextcontextbyId(@RequestParam(value="pn",defaultValue="1")int pn,
			@RequestParam(value="textId")int textId,
			Model m,Map<String,Object> map){
		System.out.println("进来了");
		PageHelper.startPage(pn,8);
		List<Comment> comment=commentservice.findcommentbytextId(textId);
		PageInfo commentlist=new PageInfo(comment);
		System.out.println("3");
		m.addAttribute("commentlist", commentlist);
		Text text=textservice.findtextbytextid(textId);
		text.setTextCount(text.getTextCount()+1);
		textservice.updatebyrecord(text);
		
		
		
		map.put("VC", text);
		return "textcontext";
	}
	
	@RequestMapping(value="commentsend",method=RequestMethod.POST)
	public String sendcomment(Comment comment,Map<String,Object> map){
		Date date=new Date();
		Timestamp timestamp=new Timestamp(date.getTime());
		comment.setCommentDate(timestamp);
		int count=commentservice.addcomment(comment);
		Text text=textservice.findtextbytextid(comment.getTextId());
		if(count==1){
			map.put("message", "发表成功");
			map.put("VC", text.getTextId());
			return "textinfo";
		}
		map.put("message", "发表失败");
		map.put("VC", text.getTextId());
		return "textinfo";
	}
	
	
	@RequestMapping(value="deletecomment")
	public String delete(@RequestParam(value="commentId")int commentId,@RequestParam(value="textId")int textId,Map<String,Object> map){
		
		int count=commentservice.deletecommentbyid(commentId);
		if(count==1){
			map.put("message", "删除成功");
			map.put("VC", textId);
			return "textinfo";
		}
		map.put("message", "删除失败");
		map.put("VC", textId);
		return "textinfo";
	}
	
	@RequestMapping(value="reportcomment")
	public String report(@RequestParam(value="commentId")int commentId,@RequestParam(value="textId")int textId,Map<String,Object> map){
		Comment comment=commentservice.findcommentbyid(commentId);
		comment.setCommentStatement(comment.getCommentStatement()+1);
		int count=commentservice.reportcommentbyid(comment);
		
		UserWithBLOBs user=userservice.finduserbyid(comment.getUserId());
		user.setUserStatement(user.getUserStatement()+1);
		int count2=userservice.report(user);
		
		Text text=textservice.findtextbytextid(textId);
		String SmsgText="你在话题为"+text.getTextHead()+"的言论被举报了，请检查并删除不适当的言论";
		Smsg smsg=new Smsg();
		smsg.setSmsgText(SmsgText);
		smsg.setUserId(user.getUserId());
		int count3=Smsgservice.addSystemmessage(smsg);
		
		
		
		if(count==1&&count2==1&&count3==1){
			map.put("message", "举报成功");
			map.put("VC", textId);
			return "textinfo";
		}
		map.put("message", "举报失败");
		map.put("VC", textId);
		return "textinfo"; 
	}
	
	@RequestMapping("reporttext")
	@ResponseBody
	public int reporttext(@RequestParam(value="textId")int textId){
		
		int success=1;
		int lost=0;
		int count1=0;
		int count2=0;
		int count3=0;
		Date date=new Date();
		Timestamp timestamp=new Timestamp(date.getTime());
		Text text=textservice.findtextbytextid(textId);
		text.setTextStatement(text.getTextStatement()+1);
		count1=textservice.updatebyrecord(text);
		
		UserWithBLOBs userWithBLOBs=userservice.finduserbyid(text.getUserId());
		userWithBLOBs.setUserStatement(userWithBLOBs.getUserStatement()+1);
		count2=userservice.report(userWithBLOBs);
		
		Smsg smsg=new Smsg();
		smsg.setSmsgText("你的标题为"+text.getTextHead()+"被举报了，请检查其内容，必要时请自行删除！");
		smsg.setUserId(text.getUserId());
		smsg.setSmsgDate(timestamp);
		count3=Smsgservice.addSystemmessage(smsg);
		
		if(count1==1&&count2==1&&count3==1){
			return success;
		}
		return lost;
	}
	
	@RequestMapping("deletetext")
	public String deletetext(@RequestParam(value="textId")int textId,@RequestParam(value="userId")int userId,Map<String,Object> map){
		int count=textservice.deletetext(textId);
		if(count==1){
			map.put("message","删除成功");
			map.put("userId", userId);
			return "usermessageinfo";
		}
		map.put("message","删除失败");
		map.put("userId", userId);
		
		return "usermessageinfo";
	}
}
