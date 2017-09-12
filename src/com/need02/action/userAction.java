package com.need02.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.need02.pojo.Company;
import com.need02.service.service;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 用户管理控制器
 * */
public class userAction extends ActionSupport {

	private static final long serialVersionUID = -281275682819237996L;

	
	private Company user = new Company(); 
	
	@SuppressWarnings("rawtypes")
	private service userService;
	
	private List<Company> users;
	
	private String searchText;
	
	// 登录函数
	public String doLogin() throws UnsupportedEncodingException
	{
		System.out.println(user.getCname());
		System.out.println(user.getPassword());
		String b =new String(this.user.getCname().getBytes("ISO8859-1"),"utf-8");
		if(this.user.getCname() == null || this.user.getPassword() == null) 
			return INPUT;
		try 
		{
			System.out.print(1);
			
			Company user = userService.doLogin(this.user.getCname(), this.user.getPassword());

			System.out.print(2);
			if(user != null)
			{
				ActionContext.getContext().getSession().put("Company", user);
				//return doQuery();
				int a = user.getWho();
				if(a==1)
				{
					return doQuery();
				}
				else
				{
					return doQuery1();
				}
			}
			else
				return INPUT;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return ERROR;
		}
	}
	
	public String doQuery() throws Exception{
		searchText = getParam("queryText");
		users = userService.queryUsers(searchText,Company.class);
			return SUCCESS;
	}
	
	public String doQuery1() throws Exception{
		searchText = getParam("queryText");
		users = userService.queryUsers(searchText,Company.class);
			return "XHSUCCESS";
	}

	// 注册函数
	public String doAdd()
	{
		String result = "";
		System.out.println(user.getCname());
		System.out.println(user.getCid());
		
		try {
			String param = getParam("param");
			if(Integer.parseInt(param) > 0){
				userService.addUser(user);
				result = doQuery();
			}else
				result = "addUser";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
public String doEdit() throws Exception{
		try {
			Integer param = Integer.parseInt(getParam("param"));
			if(param == 0){
				Integer zzbm = Integer.parseInt(getParam("zzbm"));
				user = (Company) userService.getUser(Company.class, zzbm);
				return "editUser";
			}else if(param == 1){
				userService.modifyUser(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doQuery();
	}
	public String doDelete() throws Exception{
		try {
			Integer param = Integer.parseInt(getParam("zzbm"));
			userService.deleteUser(param,Company.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doQuery();
	}
	
	protected String getParam(String key)
	{
		return ServletActionContext.getRequest().getParameter(key);
	}
	

	public String getSearchText() {
		return searchText;
	}

	public Company getUser() {
		return user;
	}

	public void setUser(Company user) {
		this.user = user;
	}

	public service getUserService() {
		return userService;
	}

	public void setUserService(service userService) {
		this.userService = userService;
	}

	public List<Company> getUsers() {
		return users;
	}

	public void setUsers(List<Company> users) {
		this.users = users;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

}

