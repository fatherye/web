package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Giftkeeper;
import sp.beans.GiftkeeperExample;
import sp.beans.GiftkeeperKey;
import sp.dao.GiftMapper;
import sp.dao.GiftkeeperMapper;

@Service
public class Giftkeeperservice {
	@Autowired
	GiftkeeperMapper giftkeeperMapper;
	public int addrecord(Giftkeeper giftkeeper){
		return giftkeeperMapper.insertSelective(giftkeeper);
	}
	
	public Giftkeeper findrecord(GiftkeeperKey giftkeeperKey){
		return giftkeeperMapper.selectByPrimaryKey(giftkeeperKey);
	}
	
	public int updaterecord(Giftkeeper giftkeeper){
		return giftkeeperMapper.updateByPrimaryKey(giftkeeper);
	}
	
	public List<Giftkeeper> findgiftwithuserid(int userId){
		GiftkeeperExample giftkeeperExample=new GiftkeeperExample();
		giftkeeperExample.createCriteria().andUserIdEqualTo(userId);
		return giftkeeperMapper.selectByExamplewithGift(giftkeeperExample);
	}
	
	
}
