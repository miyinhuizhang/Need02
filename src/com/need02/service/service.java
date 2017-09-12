package com.need02.service;

import java.util.List;

import com.need02.dao.base;
import com.need02.pojo.Company;

/**
 * 用户管理业务逻辑的实现
 * */
public class service<T> {
	
private base dao;
	
	public Company doLogin(String username,String password) throws Exception{
		if(username == null || password == null) return null;
		String queryString = "select u from Company u where u.cname = '"+username +"' and u.password = '"+password+"'";

		System.out.println(queryString);
		List<Company> users = dao.getObjects(queryString);
		return users.get(0);
	}
	
	public List<Company> queryUsers(String username,Class<Company> clazz) throws Exception{
		if(username == null || "".equals(username))
			return dao.getAllObjects(clazz);
		String queryString = "select u from Company u where u.cname like '"+username+"%'";
		return dao.getObjects(queryString);
	}
	
	public void addUser(T user) throws Exception{
		dao.addObject(user);
	}
	
	public void modifyUser(T user) throws Exception{
		dao.updateObject(user);
	}
	
	public void deleteUser(int zzbm,Class<T> clazz) throws Exception{
		T u = dao.getObject(clazz, zzbm);
		dao.deleteObject(u);
	}
	
	public T getUser(Class<T> clazz, int zzbm){
		return dao.getObject(clazz, zzbm);
	}
	
	public base getDao() {
		return dao;
	}

	public void setDao(base dao) {
		this.dao = dao;
	}
}
