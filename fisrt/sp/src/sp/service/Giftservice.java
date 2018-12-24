package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Gift;
import sp.dao.GiftMapper;

@Service
public class Giftservice {
	@Autowired
	GiftMapper giftMapper;
	
	public List<Gift> findallgift(){
		return giftMapper.selectByExampleWithBLOBs(null);
	}	
	public Gift findagift(int giftId){
		return giftMapper.selectByPrimaryKey(giftId);
	}	
	
	public int addgift(Gift gift){
		return giftMapper.insertSelective(gift);
	}
	
	public int updategift(Gift gift){
		return giftMapper.updateByPrimaryKeySelective(gift);
	}
	
	
}
