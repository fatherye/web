package sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sp.beans.Manager;
import sp.beans.ManagerExample;
import sp.dao.ManagerMapper;

@Service
public class Managerservice {
	@Autowired
	ManagerMapper managermapper;
	public List<Manager> findmanagerbyaccount(String manageraccount){
		ManagerExample managerExample=new ManagerExample();
		managerExample.createCriteria().andManagerAccountEqualTo(manageraccount);
		return managermapper.selectByExample(managerExample);
	}
	
	public int insertmanager(Manager manager){
		return managermapper.insert(manager);
	}
	
	public int updatemanager(Manager manager){
		ManagerExample managerExample=new ManagerExample();
		managerExample.createCriteria().andManagerAccountEqualTo(manager.getManagerAccount());
		return managermapper.updateByExampleSelective(manager, managerExample);
	}
	public List<Manager> findallmanagerbylevel(){
		ManagerExample managerExample=new ManagerExample();
		managerExample.setOrderByClause("manager_root DESC");
		return managermapper.selectByExample(managerExample);
	}
	public int delemanagerbymanagerid(int managerId){
		return managermapper.deleteByPrimaryKey(managerId);
	}
	public Manager findmanagerbyid(int managerId){
		return managermapper.selectByPrimaryKey(managerId);
	}
}
