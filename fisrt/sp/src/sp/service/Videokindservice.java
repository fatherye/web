package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Videokind;
import sp.dao.VideokindMapper;

@Service
public class Videokindservice {
	@Autowired
	VideokindMapper videokindmapper;
	
	
	public List<Videokind> findallkind(){
		return  videokindmapper.selectByExample(null);
	}
	
	
	public int addvideokind(Videokind videokind){
		return videokindmapper.insertSelective(videokind);
	}
	public int updatevideokind(Videokind videokind){
		return videokindmapper.updateByPrimaryKeySelective(videokind);
	}
	
	
	
}
