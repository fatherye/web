package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.VideoExample;
import sp.beans.VideoWithBLOBs;
import sp.dao.VideoMapper;


@Service
public class Videoservice {
	@Autowired
	VideoMapper videomapper;
	
	public int addvideo(VideoWithBLOBs videoWithBLOBs){
		return videomapper.insertSelective(videoWithBLOBs);
	}
	
	
	public List<VideoWithBLOBs> findvideobyuserid(int userid){
		VideoExample videoExample=new VideoExample();
		videoExample.createCriteria().andUserIdEqualTo(userid);
		return videomapper.selectByExampleWithBLOBsandKind(videoExample);
	}
	
	public List<VideoWithBLOBs> findvideobyvideokindId(int videokindId){
		VideoExample videoExample=new VideoExample();
		videoExample.createCriteria().andVideokindIdEqualTo(videokindId);
		
		return videomapper.selectByExampleWithBLOBsandUser(videoExample);
	}
	
	public VideoWithBLOBs findvideobyvideoId(int videoId){
		return videomapper.selectByPrimaryKey(videoId);
	}
	public int reportvideo(VideoWithBLOBs videoWithBLOBs){
		return videomapper.updateByPrimaryKeySelective(videoWithBLOBs);
	}
	
	public List<VideoWithBLOBs> findbykeyword(String word){
		VideoExample videoExample=new VideoExample();
		String keyword="%"+word+"%";
		videoExample.createCriteria().andVideoNameLike(keyword);
		return videomapper.selectByExampleWithBLOBsandKind(videoExample);
	}
	
	public List<VideoWithBLOBs> findbythenewest(){
		VideoExample videoExample=new VideoExample();
		videoExample.setOrderByClause("video_date DESC LIMIT 8");
		return videomapper.selectByExampleWithBLOBsandKind(videoExample);
	}
	
	public List<VideoWithBLOBs> findbythehotest(){
		VideoExample videoExample=new VideoExample();
		videoExample.setOrderByClause("video_count DESC LIMIT 10");
		return videomapper.selectByExampleWithBLOBsandKind(videoExample);
	}
	
	public List<VideoWithBLOBs> findbytherandomlearn(){
		VideoExample videoExample=new VideoExample();
		videoExample.createCriteria().andVideokindIdEqualTo(2);
		videoExample.setOrderByClause("rand() LIMIT 8");
		return videomapper.selectByExampleWithBLOBsandUser(videoExample);
	}
	
	public List<VideoWithBLOBs> findbythelearnhot(){
		VideoExample videoExample=new VideoExample();
		videoExample.createCriteria().andVideokindIdEqualTo(2);
		videoExample.setOrderByClause("video_count DESC LIMIT 8");
		return videomapper.selectByExampleWithBLOBsandUser(videoExample);
	}
	
	
	
	
	
	public List<VideoWithBLOBs> findallorderbybad(){
		VideoExample videoExample=new VideoExample();
		videoExample.setOrderByClause("video_statement DESC");
		return videomapper.selectByExampleWithBLOBsandKind(videoExample);
	}
	public int deletevideobyid(int videoId){
		return videomapper.deleteByPrimaryKey(videoId);
	}
	
}
