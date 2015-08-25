package cn.zogo.index.admin.dao;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import cn.zogo.index.admin.dto.Admin;

public class AdminDAO {
	public Admin find(PersistenceManager pm, String loginname, String password){
		Query query = pm.newQuery(Admin.class);
		query.setFilter("loginname==loginnameP && password==passwordP");
		query.declareParameters("String loginnameP,String passwordP");
		query.setUnique(true);
		
		return (Admin)query.execute(loginname,password);
	}
}
