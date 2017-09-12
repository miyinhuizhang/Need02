package com.need02.pojo;

/**
 * Company entity. @author MyEclipse Persistence Tools
 */

public class Company implements java.io.Serializable
{

	// Fields

	private String cid;
	private String cname;
	private String cnature;
	private String password;
	private String city;
	private String address;
	private String internet;
	private String email;
	private String people;
	private String postalcode;
	private String linkman;
	private String phone;
	private String telephone;
	private String fax;
	private String synopsis;
	private String government;
	private Integer who;

	// Constructors

	/** default constructor */
	public Company()
	{
	}

	/** minimal constructor */
	public Company(String cname, String cnature, String password, Integer who)
	{
		this.cname = cname;
		this.cnature = cnature;
		this.password = password;
		this.who = who;
	}

	/** full constructor */
	public Company(String cname, String cnature, String password, String city,
			String address, String internet, String email, String people,
			String postalcode, String linkman, String phone, String telephone,
			String fax, String synopsis, String government, Integer who)
	{
		this.cname = cname;
		this.cnature = cnature;
		this.password = password;
		this.city = city;
		this.address = address;
		this.internet = internet;
		this.email = email;
		this.people = people;
		this.postalcode = postalcode;
		this.linkman = linkman;
		this.phone = phone;
		this.telephone = telephone;
		this.fax = fax;
		this.synopsis = synopsis;
		this.government = government;
		this.who = who;
	}

	// Property accessors

	public String getCid()
	{
		return this.cid;
	}

	public void setCid(String cid)
	{
		this.cid = cid;
	}

	public String getCname()
	{
		return this.cname;
	}

	public void setCname(String cname)
	{
		this.cname = cname;
	}

	public String getCnature()
	{
		return this.cnature;
	}

	public void setCnature(String cnature)
	{
		this.cnature = cnature;
	}

	public String getPassword()
	{
		return this.password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getCity()
	{
		return this.city;
	}

	public void setCity(String city)
	{
		this.city = city;
	}

	public String getAddress()
	{
		return this.address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public String getInternet()
	{
		return this.internet;
	}

	public void setInternet(String internet)
	{
		this.internet = internet;
	}

	public String getEmail()
	{
		return this.email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getPeople()
	{
		return this.people;
	}

	public void setPeople(String people)
	{
		this.people = people;
	}

	public String getPostalcode()
	{
		return this.postalcode;
	}

	public void setPostalcode(String postalcode)
	{
		this.postalcode = postalcode;
	}

	public String getLinkman()
	{
		return this.linkman;
	}

	public void setLinkman(String linkman)
	{
		this.linkman = linkman;
	}

	public String getPhone()
	{
		return this.phone;
	}

	public void setPhone(String phone)
	{
		this.phone = phone;
	}

	public String getTelephone()
	{
		return this.telephone;
	}

	public void setTelephone(String telephone)
	{
		this.telephone = telephone;
	}

	public String getFax()
	{
		return this.fax;
	}

	public void setFax(String fax)
	{
		this.fax = fax;
	}

	public String getSynopsis()
	{
		return this.synopsis;
	}

	public void setSynopsis(String synopsis)
	{
		this.synopsis = synopsis;
	}

	public String getGovernment()
	{
		return this.government;
	}

	public void setGovernment(String government)
	{
		this.government = government;
	}

	public Integer getWho()
	{
		return this.who;
	}

	public void setWho(Integer who)
	{
		this.who = who;
	}

}