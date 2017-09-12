package com.need02.pojo;

/**
 * Technology entity. @author MyEclipse Persistence Tools
 */

public class Technology implements java.io.Serializable
{

	// Fields

	private Integer tid;
	private String cid;
	private String tname;
	private String tksnear;
	private String tjsnear;
	private String tsynopsis1;
	private String tsynopsis2;
	private String tsynopsis3;
	private String tkeyword1;
	private String tkeyword2;
	private String tkeyword3;
	private String tkeyword4;
	private String tkeyword5;
	private String tnature;
	private String classify;
	private String sphere;
	private String industry;
	private String tcooperate;
	private String tcapital;
	private String tcompany;
	private String sh;
	private String bm;
	private String csry;
	private String zsry;
	private String cw;

	// Constructors

	/** default constructor */
	public Technology()
	{
	}

	/** minimal constructor */
	public Technology(String cid, String tname, String tksnear, String tjsnear,
			String tsynopsis1, String tsynopsis2, String tsynopsis3,
			String tkeyword1, String tnature, String tcooperate,
			String tcapital, String sh)
	{
		this.cid = cid;
		this.tname = tname;
		this.tksnear = tksnear;
		this.tjsnear = tjsnear;
		this.tsynopsis1 = tsynopsis1;
		this.tsynopsis2 = tsynopsis2;
		this.tsynopsis3 = tsynopsis3;
		this.tkeyword1 = tkeyword1;
		this.tnature = tnature;
		this.tcooperate = tcooperate;
		this.tcapital = tcapital;
		this.sh = sh;
	}

	/** full constructor */
	public Technology(String cid, String tname, String tksnear, String tjsnear,
			String tsynopsis1, String tsynopsis2, String tsynopsis3,
			String tkeyword1, String tkeyword2, String tkeyword3,
			String tkeyword4, String tkeyword5, String tnature,
			String classify, String sphere, String industry, String tcooperate,
			String tcapital, String tcompany, String sh, String bm,
			String csry, String zsry, String cw)
	{
		this.cid = cid;
		this.tname = tname;
		this.tksnear = tksnear;
		this.tjsnear = tjsnear;
		this.tsynopsis1 = tsynopsis1;
		this.tsynopsis2 = tsynopsis2;
		this.tsynopsis3 = tsynopsis3;
		this.tkeyword1 = tkeyword1;
		this.tkeyword2 = tkeyword2;
		this.tkeyword3 = tkeyword3;
		this.tkeyword4 = tkeyword4;
		this.tkeyword5 = tkeyword5;
		this.tnature = tnature;
		this.classify = classify;
		this.sphere = sphere;
		this.industry = industry;
		this.tcooperate = tcooperate;
		this.tcapital = tcapital;
		this.tcompany = tcompany;
		this.sh = sh;
		this.bm = bm;
		this.csry = csry;
		this.zsry = zsry;
		this.cw = cw;
	}

	// Property accessors

	public Integer getTid()
	{
		return this.tid;
	}

	public void setTid(Integer tid)
	{
		this.tid = tid;
	}

	public String getCid()
	{
		return this.cid;
	}

	public void setCid(String cid)
	{
		this.cid = cid;
	}

	public String getTname()
	{
		return this.tname;
	}

	public void setTname(String tname)
	{
		this.tname = tname;
	}

	public String getTksnear()
	{
		return this.tksnear;
	}

	public void setTksnear(String tksnear)
	{
		this.tksnear = tksnear;
	}

	public String getTjsnear()
	{
		return this.tjsnear;
	}

	public void setTjsnear(String tjsnear)
	{
		this.tjsnear = tjsnear;
	}

	public String getTsynopsis1()
	{
		return this.tsynopsis1;
	}

	public void setTsynopsis1(String tsynopsis1)
	{
		this.tsynopsis1 = tsynopsis1;
	}

	public String getTsynopsis2()
	{
		return this.tsynopsis2;
	}

	public void setTsynopsis2(String tsynopsis2)
	{
		this.tsynopsis2 = tsynopsis2;
	}

	public String getTsynopsis3()
	{
		return this.tsynopsis3;
	}

	public void setTsynopsis3(String tsynopsis3)
	{
		this.tsynopsis3 = tsynopsis3;
	}

	public String getTkeyword1()
	{
		return this.tkeyword1;
	}

	public void setTkeyword1(String tkeyword1)
	{
		this.tkeyword1 = tkeyword1;
	}

	public String getTkeyword2()
	{
		return this.tkeyword2;
	}

	public void setTkeyword2(String tkeyword2)
	{
		this.tkeyword2 = tkeyword2;
	}

	public String getTkeyword3()
	{
		return this.tkeyword3;
	}

	public void setTkeyword3(String tkeyword3)
	{
		this.tkeyword3 = tkeyword3;
	}

	public String getTkeyword4()
	{
		return this.tkeyword4;
	}

	public void setTkeyword4(String tkeyword4)
	{
		this.tkeyword4 = tkeyword4;
	}

	public String getTkeyword5()
	{
		return this.tkeyword5;
	}

	public void setTkeyword5(String tkeyword5)
	{
		this.tkeyword5 = tkeyword5;
	}

	public String getTnature()
	{
		return this.tnature;
	}

	public void setTnature(String tnature)
	{
		this.tnature = tnature;
	}

	public String getClassify()
	{
		return this.classify;
	}

	public void setClassify(String classify)
	{
		this.classify = classify;
	}

	public String getSphere()
	{
		return this.sphere;
	}

	public void setSphere(String sphere)
	{
		this.sphere = sphere;
	}

	public String getIndustry()
	{
		return this.industry;
	}

	public void setIndustry(String industry)
	{
		this.industry = industry;
	}

	public String getTcooperate()
	{
		return this.tcooperate;
	}

	public void setTcooperate(String tcooperate)
	{
		this.tcooperate = tcooperate;
	}

	public String getTcapital()
	{
		return this.tcapital;
	}

	public void setTcapital(String tcapital)
	{
		this.tcapital = tcapital;
	}

	public String getTcompany()
	{
		return this.tcompany;
	}

	public void setTcompany(String tcompany)
	{
		this.tcompany = tcompany;
	}

	public String getSh()
	{
		return this.sh;
	}

	public void setSh(String sh)
	{
		this.sh = sh;
	}

	public String getBm()
	{
		return this.bm;
	}

	public void setBm(String bm)
	{
		this.bm = bm;
	}

	public String getCsry()
	{
		return this.csry;
	}

	public void setCsry(String csry)
	{
		this.csry = csry;
	}

	public String getZsry()
	{
		return this.zsry;
	}

	public void setZsry(String zsry)
	{
		this.zsry = zsry;
	}

	public String getCw()
	{
		return this.cw;
	}

	public void setCw(String cw)
	{
		this.cw = cw;
	}

}