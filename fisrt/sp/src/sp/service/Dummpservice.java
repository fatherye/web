package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Dummp;
import sp.beans.DummpExample;
import sp.dao.DummpMapper;

@Service
public class Dummpservice {
	@Autowired
	DummpMapper dummpMapper;
	
	public List<Dummp> finddummpbyvideoIdwith(int videoId){
		DummpExample dummpexample=new DummpExample();
		dummpexample.createCriteria().andVideoIdEqualTo(videoId);
		return dummpMapper.selectByExamplewithUser(dummpexample);
	}
	
	public List<Dummp> finddummpbyvideoId(int videoId){
		DummpExample dummpexample=new DummpExample();
		dummpexample.createCriteria().andVideoIdEqualTo(videoId);
		return dummpMapper.selectByExample(dummpexample);
	}
	
	public int dummpsent(Dummp dummp){
		return dummpMapper.insertSelective(dummp);
	}
	public int deledummpbyvideoId(int videoId){
		DummpExample dummpexample=new DummpExample();
		dummpexample.createCriteria().andVideoIdEqualTo(videoId);
		return dummpMapper.deleteByExample(dummpexample);
	}
	
}
