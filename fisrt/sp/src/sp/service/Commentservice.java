package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Comment;
import sp.beans.CommentExample;
import sp.dao.CommentMapper;

@Service
public class Commentservice {
	@Autowired
	CommentMapper commentMapper;
	public List<Comment> findcommentbytextId(int textId){
		CommentExample commentExample=new CommentExample();
		commentExample.createCriteria().andTextIdEqualTo(textId);
		return commentMapper.selectByExampleWithBLOBsandUser(commentExample);
	}
	
	public int addcomment(Comment comment){
		return commentMapper.insertSelective(comment);
	}
	
	public int deletecommentbyid(int commentId){
		return commentMapper.deleteByPrimaryKey(commentId);
	}
	
	public int reportcommentbyid(Comment comment){
		return commentMapper.updateByPrimaryKeySelective(comment);
	}
	public Comment findcommentbyid(int commentId){
		return commentMapper.selectByPrimaryKey(commentId);
	}
	public List<Comment> findallcommentbybad(){
		CommentExample commentExample=new CommentExample();
		commentExample.setOrderByClause("comment_statement DESC");
		return commentMapper.selectByExampleWithBLOBsandUser(commentExample);
	}
	public int deletebytextid(int textId){
		CommentExample commentExample=new CommentExample();
		commentExample.createCriteria().andTextIdEqualTo(textId);
		return commentMapper.deleteByExample(commentExample);
	}
}
