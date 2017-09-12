<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>河北省重大技术需求征集系统</title>
<script>

function validate(){
	var a = document.getElementById("T_Keyword1").value;
	var b = document.getElementById("T_Keyword2").value;
	var c = document.getElementById("T_Keyword3").value;
	var d = document.getElementById("T_Keyword4").value;
	var e = document.getElementById("T_Keyword5").value;
	if(a.length>10||b.length>10||c.length>10||d.length>10||e.length>10){
	    document.getElementById("spw").innerText="关键字不得超过10个字符！";
	}
	else{
		document.getElementById("spw").innerText="";
	}
	
}
</script>
<script type="text/javascript">
	if (window.ActiveXObject && !window.XMLHttpRequest) {
		window.XMLHttpRequest = function() {
			return new ActiveXObject((navigator.userAgent.toLowerCase()
					.indexOf('msie 6') != -1) ? 'Microsoft.XMLHTTP'
					: 'Msxml2.XMLHTTP');
		};
	}//取得XMLHttpRequest对象 
	var req;
	var flagSelect;
	function testName(flag, value)//使用Ajax访问服务器
	{
		flagSelect = flag; //标记一下当前是选择省,还是选择市
		req = new XMLHttpRequest();
		if (req) {
			req.onreadystatechange = setValue;
		}
		req.open('POST', "getinfo.jsp?flag=" + flag + "&value=" + value);//把参数带到服务器中
		req.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		req.send(null);
	}
	function setValue() {
		if (req.readyState == 4)//访问到服务器
		{
			if (req.status == 200)//正确返回
			{
				if (flagSelect == "1")//如果选择某个省要更新市和区
				{
					var v = req.responseText.split("||");//req.responseText是服务器返回来的字符串
					paint(document.all("sec"), v[0]);//更新市下拉框
					paint(document.all("thi"), v[1]);//更新区下拉框
				}
				if (flagSelect == "2")//如果选择某市,只需改变区
				{
					var v = req.responseText;//req.responseText是服务器返回来的字符串
					paint(document.all("thi"), v);//更新区下拉框
				}
			}
		}
	}
	
	
	
	
	
	function testName1(flag, value)//使用Ajax访问服务器
	{
		flagSelect = flag; //标记一下当前是选择省,还是选择市
		req = new XMLHttpRequest();
		if (req) {
			req.onreadystatechange = setValue1;
		}
		req.open('POST', "getinfo1.jsp?flag=" + flag + "&value=" + value);//把参数带到服务器中
		req.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		req.send(null);
	}
	function setValue1() {
		if (req.readyState == 4)//访问到服务器
		{
			if (req.status == 200)//正确返回
			{
				if (flagSelect == "1")//如果选择某个省要更新市和区
				{
					var v = req.responseText.split("||");//req.responseText是服务器返回来的字符串
					paint1(document.all("fiv"), v[0]);//更新市下拉框
					paint1(document.all("six"), v[1]);//更新区下拉框
				}
				if (flagSelect == "2")//如果选择某市,只需改变区
				{
					var v = req.responseText;//req.responseText是服务器返回来的字符串
					paint1(document.all("six"), v);//更新区下拉框
				}
			}
		}
	}
	
	function paint(obj, value)//根据一对数据去更新一个下拉框
	{
		var ops = obj.options;
		var v = value.split(";");//得到一些数据,(修改过了..)
		while (ops.length > 0)//先清空原来的数据
		{
			ops.remove(0);
		}
		for (var i = 0; i < v.length - 1; i++)//把新得到的数据显示上去
		{
			var o = document.createElement("OPTION");//创建一个option把它加到下拉框中
			o.value = v[i].split(",")[0];
			o.text = v[i].split(",")[1];
			ops.add(o);
		}
	}
	function paint1(obj, value)//根据一对数据去更新一个下拉框
	{
		var ops = obj.options;
		var v = value.split(";");//得到一些数据,(修改过了..)
		while (ops.length > 0)//先清空原来的数据
		{
			ops.remove(0);
		}
		for (var i = 0; i < v.length - 1; i++)//把新得到的数据显示上去
		{
			var o = document.createElement("OPTION");//创建一个option把它加到下拉框中
			o.value = v[i].split(",")[0];
			o.text = v[i].split(",")[1];
			ops.add(o);
		}
	}
</script>
<SCRIPT language="javascript">
function star()
{
		if (form1.T_Name.value == "") {
			window.alert("请输入技术需求名称！");
			form1.Tec_Name.focus();
			return false;
		}
		if (form1.T_Synopsis1.value == ""||form1.T_Synopsis2.value == ""||form1.T_Synopsis3.value == "") {
			window.alert("请输入科技需求概述！");
			form1.Tec_Contents.focus();
			return false;
		}
     return true;
}
function star2()
{
		if (form1.T_Name.value == "") {
			window.alert("请输入技术需求名称！");
			form1.Tec_Name.focus();
			return false;
		}
		if (form1.T_Synopsis1.value == ""||form1.T_Synopsis2.value == ""||form1.T_Synopsis3.value == "") {
			window.alert("请输入科技需求概述！");
			form1.Tec_Contents.focus();
			return false;
		}
		alert("需求信息提交后不能修改！ 确定提交吗？");
     return true;
}

function gbcount(message,total,used,remain) 
{ 
var max; 
max = total.value; 
if (message.value.length > max) { 
message.value = message.value.substring(0,max); 
used.value = max; 
remain.value = 0; 
alert("字数不能超过 500 个字!"); 
} 
else { 
used.value = message.value.length; 
remain.value = max - used.value; 
} 
} 
function gbcount2(message,total,used,remain) 
{ 
	var max; 
	max = total.value; 
	if (message.value.length > max) { 
	message.value = message.value.substring(0,max); 
	used.value = max; 
	remain.value = 0; 
	alert("字数不能超过 500 个字!"); 
	} 
	else { 
	used.value = message.value.length; 
	remain.value = max - used.value; 
	} 
}
function gbcount(message,total,used,remain) 
{ 
	var max; 
	max = total.value; 
	if (message.value.length > max) { 
	message.value = message.value.substring(0,max); 
	used.value = max; 
	remain.value = 0; 
	alert("字数不能超过 500 个字!"); 
	} 
	else { 
	used.value = message.value.length; 
	remain.value = max - used.value; 
	} 
}
function check1()
{
	var b=document.getElementById("Sphere10").value;
	var c=document.getElementById("其他").value;
	if(b!="")
	{
		b=c;
	}
}
function check2(a1)
{
	//var a=document.getElementById("a1").value;
	if(a1.value==""){
		alert("开始年份为空！请重新输入");
		loginform.T_KSNear.focus();
	}
}
function check3(a1,d1)
{
	//var d=document.getElementById("d1").value;
	if(d1.value==""){
		alert("结束年份为空！请重新输入");
		loginform.T_JSNear.focus();
	}
	else
	{
		var myDate = new Date();
		myDate.getFullYear(); //获取完整的年份(4位,1970-????)
		if(myDate.getFullYear()>parseFloat(d1.value))
		{
			alert("结束年份小于当前年份！");
			d1.value="";
			loginform.T_JSNear.focus();
		}
		else
		{
			if(parseFloat(a1.value)>parseFloat(d1.value))
			{
				alert("开始年份大于结束年份！");
				loginform.T_JSNear.focus();
			}
		}
	}
}
function check(t)
{
	if(event.keyCode==9)
		{
		t.style.display="";
		}
}
function show()
{
	var v=document.getElementById("T_Nature").value;
	var t=document.getElementById("area");
	if(v=="基础研究")
	{
		t.style.display="";
	}
	else
	{
		t.style.display="none";
	}
	var t2=document.getElementById("area2");
	if(v=="基础研究")
	{
		t2.style.display="none";
	}
	else
	{
		t2.style.display="";
	}
}
function showValue(evt)
{
	var value=evt.target.value;
	var showBox=document.getElementById("showValue");
	showBox.value=value;
}
</script>
<style type="text/css">
<!--
h1,h2,h3,h4,h5,h6 {
	font-family: 楷体, 隶书, 幼圆, 微软雅黑;
	font-weight: bold;
}
.STYLE2 {
	font-family: "幼圆";
	font-size: 18px;
	color: #000000;
	font-weight: bold;
}
.red{
	color: #ff0000;}
-->
</style>
</head>
<body>
  <form action="action/userAction.action" method="post" name="form1" >		
 <table  width="1050" height="500" border="3" align="center" class="STYLE2">
		<tr>
    <td colspan="9"><p>河北省重大技术需求征集表</p>
    <p>(带<i class="red"> * </i>号的为必填项,信息为调查使用,请认真填写.)</p>
    </td>
  </tr>
		<tr>
    <td colspan="3">组织结构编码：<i class="red">*</i></td>
    <td colspan="2"> ${user.CId}</td>
    <td>企业名称：<i class="red">*</i></td>
    <td>${user.CName}</td>
    <td>归口单位：<i class="red">*</i></td>
    <td>${user.government}</td>
  </tr>
  <tr>
    <td colspan="3">通讯地址：<i class="red">*</i></td>
    <td colspan="6">${user.address}</td>
  </tr>
  <tr>
    <td colspan="3">公司网站：</td>
    <td colspan="2">${user.internet}</td>
    <td>电子邮箱：<i class="red">*</i></td>
    <td colspan="3">${user.email}</td>
  </tr>
  <tr>
    <td colspan="3">法人：<i class="red">*</i></td>
    <td colspan="2">${user.people}</td>
    <td>邮政编码：</td>
    <td colspan="3">${user.postalcode}</td>
  </tr>
  <tr>
    <td colspan="3" rowspan="2">联系人：<i class="red">*</i></td>
    <td colspan="1" rowspan="2">${user.linkman}</td>
    <td height="36">电话：</td>
    <td width="89">固定电话：<i class="red">*</i></td>
    <td width="181">${user.phone}</td>
    <td width="79">手机：<i class="red">*</i></td>
    <td width="219">${user.telephone}</td>
  </tr>
  <tr>
    <td colspan="2" height="36">传真号码：</td>
    <td colspan="3">${user.fax}</td>
  </tr>
  <tr>
    <td colspan="4">企业属性：<i class="red">*</i></td>
    <td colspan="5">${user.CNature}</td>
  </tr>
  <tr>
    <td colspan="4">机构简介：<i class="red">*（单位基本情况，研究基础等，限200字）</i></td>
    <td colspan="5">${user.synopsis}</td>
  </tr>
  </table>
  </form>
  
  <form action="action/userAction.action" method="post" name="form2" >  
  <table  width="1050" height="520" border="3" align="center" align="center" class="STYLE2">
  <tr>
    <td>技术需求名称： <i class="red">*</i></td>
    <td colspan="2"><input name="T_Name" type="text" id="T_Name" onchange="check2()"></td>
  </tr>
  <tr>
    <td>需求时限： <i class="red">*</i></td>
    <td colspan="2">开始年份：<input name="T_KSNear" type="text" id="T_KSNear" onchange="check2(T_KSNear)">年
    				结束年份：<input name="T_JSNear" type="text" id="T_JSNear" onchange="check3(T_KSNear,T_JSNear)" >年</td>
  </tr>
  <tr>
    <td height="106" rowspan="4">技术需求概述:<i class="red">*</i></td>
    <td width="326" height="52">1、主要问题（需要解决的重大技术问题）<i class="red">*</i></td>
    <td width="486"><textarea name="T_Synopsis1" type="text" id="T_Synopsis1" 
    rows="10" cols="75" onKeyDown="gbcount(this.form.T_Synopsis1,this.form.total,this.form.used,this.form.remain);" 
    onKeyUp="gbcount(this.form.T_Synopsis1,this.form.total,this.form.used,this.form.remain);"></textarea>
<p>最多字数： 
<input disabled maxLength="4" name="total" size="3" value="500" class="inputtext"> 
已用字数： 
<input disabled maxLength="4" name="used" size="3" value="0" class="inputtext"> 
剩余字数： 
<input disabled maxLength="4" name="remain" size="3" value="500" class="inputtext"></td>
  </tr>
  <tr>
    <td height="52">2、技术关键（所需的关键技术、主要指标）<i class="red">*</i></td>
    <td height="52"><textarea name="T_Synopsis2" type="text" id="T_Synopsis2" 
    rows="10" cols="75" onKeyDown="gbcount2(this.form.T_Synopsis2,this.form.total2,this.form.used2,this.form.remain2);" 
    onKeyUp="gbcount(this.form.T_Synopsis2,this.form.total2,this.form.used2,this.form.remain2);"></textarea>
<p>最多字数： 
<input disabled maxLength="4" name="total2" size="3" value="500" class="inputtext"> 
已用字数： 
<input disabled maxLength="4" name="used2" size="3" value="0" class="inputtext"> 
剩余字数： 
<input disabled maxLength="4" name="remain2" size="3" value="500" class="inputtext"></td>
  </tr>
  <tr>
    <td height="52">3、预期目标（技术创新性、经济社会效益）</td>
    <td height="52"><textarea name="T_Synopsis3" type="text" id="T_Synopsis3" 
    rows="10" cols="75" onKeyDown="gbcount(this.form.T_Synopsis3,this.form.total3,this.form.used3,this.form.remain3);" 
    onKeyUp="gbcount(this.form.T_Synopsis3,this.form.total3,this.form.used3,this.form.remain3);"></textarea>
<p>最多字数： 
<input disabled maxLength="4" name="total3" size="3" value="500" class="inputtext"> 
已用字数： 
<input disabled maxLength="4" name="used3" size="3" value="0" class="inputtext"> 
剩余字数： 
<input disabled maxLength="4" name="remain3" size="3" value="500" class="inputtext"></td>
  </tr>
  <tr>
    <td height="200px">关键字：<i class="red">* （不得少于一个）</i></p><span id="spw" style="display: inline;"></span></td>
    <td colspan="2">
    <p><input name="T_Keyword1" type="text" id="T_Keyword1"  onkeydown="check(T_Keyword2)" onchange="validate()"></p>
    <p><input name="T_Keyword2" type="text" id="T_Keyword2" style="display:none;" onkeydown="check(T_Keyword3)" onchange="validate()"></p>
    <p><input name="T_Keyword3" type="text" id="T_Keyword3" style="display:none;" onkeydown="check(T_Keyword4)" onchange="validate()"></p>
    <p><input name="T_Keyword4" type="text" id="T_Keyword4" style="display:none;" onkeydown="check(T_Keyword5)" onchange="validate()"></p>
    <p><input name="T_Keyword5" type="text" id="T_Keyword5" style="display:none;"  onchange="validate()"></p>
    </td>
  </tr>
    <tr>
    <td height="50" >拟投入资金总额：<i class="red">*</i></td>
    <td><input name="T_capital" type="text" id="T_capital" onchange="check()">万元</td>
  </tr>
  <tr>
    <td>技术需求合作模式：<i class="red">*</i></td>
    <td colspan="2"><input type="radio" name="T_Cooperate" value="独立开发"/>独立开发&nbsp;
                <input type="radio" name="T_Cooperate" value="技术转让" />技术转让 &nbsp;
                <input type="radio" name="T_Cooperate" value="技术入股" />技术入股 &nbsp;
                <input type="radio" name="T_Cooperate" value="合作开发" />合作开发 &nbsp;
                <input type="radio" name="T_Cooperate" value="其他" />其他 &nbsp;</td>
  </tr>
  <tr>
    <td height="50" >合作意向单位：</td>
    <td colspan="2"><input name="T_company" type="text" id="T_company" ></td>
  </tr>
  <tr>
    <td>科技活动类型：<i class="red">*</i></td>
    <td colspan="2">
    <select name="T_Nature" id="T_Nature" onchange="show()">
				<option value="基础研究">基础研究</option>
				<option value="应用研究">应用研究</option>
				<option value="试验发展">试验发展</option>
				<option value="研究发展与成果应用">研究发展与成果应用</option>
				<option value="技术推广与科技服务">技术推广与科技服务</option>
				<option value="生产性活动">生产性活动</option>
				</select>
<div style="display:;" id="area">
  <p>学科分类： <i class="red">*</i>
  <table align=center>
		<tr>
			<td>一级学科<select name="fir" onchange="testName(1,this.value);">
			<option>1</option>					
			</select>
			</td>
			<td>二级学科<select name="sec" onchange="testName(2,this.value);">
			<option>1</option>					
			</select>
			</td>
			<td>三级学科<select name="thi">
			<option>1</option>
			</select>
			</td>
		</tr>
	</table>
				</p>
				</div>
<div style="display:none;" id="area2">
  <p>需求技术所属领域： <i class="red">*</i></p>
    <p><input type="checkbox" name="Sphere1" value="电子信息"/>电子信息&nbsp;
                <input type="checkbox" name="Sphere2" value="光机电一体化" />光机电一体化 &nbsp;
                <input type="checkbox" name="Sphere3" value="软件" />软件 &nbsp;
                <input type="checkbox" name="Sphere4" value="生物技术与制药" />生物技术与制药 &nbsp;
                <input type="checkbox" name="Sphere5" value="新材料及应用" />新材料及应用 &nbsp;</p>
                <p> 
                <input type="checkbox" name="Sphere6" value="现代农业"/>现代农业&nbsp;
                <input type="checkbox" name="Sphere7" value="新能源与高效节能" />新能源与高效节能 &nbsp;
                <input type="checkbox" name="Sphere8" value="资源与环境" />资源与环境 &nbsp;
                <input type="checkbox" name="Sphere9" value="高技术服务业" />高技术服务业 &nbsp;
                <input type="checkbox" name="Sphere9" value="海洋" />海洋 &nbsp;
                </p>
                <p>
                <input type="checkbox" name="Sphere9" value="社会公共事业" />社会公共事业 &nbsp;
                <input type="checkbox" name="Sphere9" value="医疗卫生" />医疗卫生 &nbsp;
                <input type="checkbox" name="Sphere10" id="Sphere10" value="qt" onchage="check1()"/>其他<input type="text" name="其他"  id="其他"  onchage="check1()"/> &nbsp;</p>
<p>需求技术应用行业：<i class="red">*</i>
<table align=center>
		<tr>
			<td>一级行业<select name="fo" onchange="testName1(1,this.value);">
			<option>1</option>
			</td>
			<td>二级行业<select name="fiv" onchange="testName1(2,this.value);">
			<option>1</option>
			</select>
			</td>
			<td>三级行业<select name="six">
			<option>1</option>
			</select>
			</td>
		</tr>
	</table>
				</p>
				</div>
  </tr>
  <tr>
    <td height="132" colspan="3"><p align="center">
			<input type="submit" name="submit" value="保存" onclick="star()" class="STYLE2" style="margin-top:20px; margin-right:70px;color:#cc3300 ">
			<input type="submit" name="submit2" value="保存并提交" onclick="star2()" class="STYLE2" style="margin-top:20px; margin-right:70px;color:#cc3300 ">
			<input type="reset" value="重置" class="STYLE2"style="margin-top:20px;margin-right:60px; color:#ff0000"></p>
			</td>
  </tr>
  </table>
	</form>
</body>
</html>