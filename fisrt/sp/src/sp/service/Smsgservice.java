package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Smsg;
import sp.beans.SmsgExample;
import sp.dao.SmsgMapper;

@Service
public class Smsgservice {
	@Autowired
	SmsgMapper smsgMapper;
	public List<Smsg> findSmsgbyuserid(int userId){
		SmsgExample smsgExample=new SmsgExample();
		smsgExample.createCriteria().andSmsgStatementEqualTo(0).andUserIdEqualTo(userId);
		return smsgMapper.selectByExampleWithBLOBs(smsgExample);
	}
	
	public int addSystemmessage(Smsg smsg){
		return smsgMapper.insertSelective(smsg);
	}
	public int update(Smsg smsg){
		return smsgMapper.updateByPrimaryKeySelective(smsg);
	}
	
	
	
}
