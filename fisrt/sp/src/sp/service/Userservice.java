package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Smsg;
import sp.beans.SmsgExample;
import sp.beans.User;
import sp.beans.UserExample;
import sp.beans.UserWithBLOBs;
import sp.dao.SmsgMapper;
import sp.dao.UserMapper;




@Service
public class Userservice {
	@Autowired
	UserMapper usermapper;
	
    public int doregedit(UserWithBLOBs UserWithBLOBs){
		
		return usermapper.insertSelective(UserWithBLOBs);
	}
    
    
    public List<UserWithBLOBs> dologin(UserWithBLOBs UserWithBLOBs){
    	UserExample userexample=new UserExample();
    	userexample.createCriteria().andUserAccountEqualTo(UserWithBLOBs.getUserAccount());
    	return usermapper.selectByExampleWithBLOBs(userexample);
    }
    
    public int changemessage(UserWithBLOBs UserWithBLOBs){
    	return usermapper.updateByPrimaryKeySelective(UserWithBLOBs);
    }
    public UserWithBLOBs finduserbyid(int userId){
    	return usermapper.selectByPrimaryKey(userId);
    }
   
   
    public int report(UserWithBLOBs userWithBLOBs){
    	return usermapper.updateByPrimaryKeySelective(userWithBLOBs);
    }
    
   public int giftpay(UserWithBLOBs userWithBLOBs){
	   return usermapper.updateByPrimaryKeySelective(userWithBLOBs);
   }
   public List<UserWithBLOBs>  findalluserorderbybad(){
	   UserExample userExample=new UserExample();
	   userExample.setOrderByClause("user_statement DESC");
	   return usermapper.selectByExampleWithBLOBs(userExample);
   }
   
   
   
}
