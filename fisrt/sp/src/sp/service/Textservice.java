package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Text;
import sp.beans.TextExample;
import sp.dao.TextMapper;

@Service
public class Textservice {
	@Autowired
	TextMapper textmapper;
	
	public int addtext(Text text){
		return textmapper.insertSelective(text);
	}
	
	public List<Text> findtextbyuserid(int userId){
		TextExample textexample=new TextExample();
		textexample.createCriteria().andUserIdEqualTo(userId);
		return textmapper.selectByExampleWithBLOBs(textexample);
	}
	
	public List<Text> findalltext(){
		return textmapper.selectByExampleWithBLOBswithUser(null);
	}
	
	public Text findtextbytextid(int textId){
		return textmapper.selectByPrimaryKeywithUser(textId);
	}
	public List<Text> findtextbyword(String word){
		TextExample textExample=new TextExample();
		String keyword="%"+word+"%";
		textExample.createCriteria().andTextHeadLike(keyword);
		return textmapper.selectByExampleWithBLOBswithUser(textExample);
	}
	public int updatebyrecord(Text text){
		return textmapper.updateByPrimaryKeySelective(text);
	}
	public int deletetext(int textId){
		return textmapper.deleteByPrimaryKey(textId);
	}
}
