package sp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Userpay;
import sp.dao.UserpayMapper;

@Service
public class Userpayservice {
	@Autowired
	UserpayMapper userpayMapper;
	public int insertrecord(Userpay userpay){
		return userpayMapper.insertSelective(userpay);
	}
	public int updaterecord(Userpay userpay){
		return userpayMapper.updateByPrimaryKeySelective(userpay);
	}
	public Userpay findrecordbypayid(String payid){
		return userpayMapper.selectByPrimaryKey(payid);
	}
}
