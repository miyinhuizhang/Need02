<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>企业注册</title>
<script>
function passwdt() 
{ 
	var a = document.getElementById("Password").value;
	var b = document.getElementById("surepw").value;
	
	if(!a.equals(b))
	{
		document.getElementById("pd").innerText="两次密码不一致！ ";
    }
    else{
    	document.getElementById("pd").innerText="两次密码一致！";
    }
}
function showError1(){
	var reg = /^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$/;
	var a = document.getElementById("Internet").value;

    if(!reg.test(a))
    {
    	document.getElementById("web").innerText="格式错误 ";
    }
    else{
    	document.getElementById("web").innerText="";
    }
} 
function showError2(){
	var reg = /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/gi;
	var a = document.getElementById("Email").value;

    if(!reg.test(a))
    {
    	document.getElementById("em").innerText="邮箱格式不正确";
    }
    else{
    	document.getElementById("em").innerText="";
    }
} 
function showError3(){
	var a = document.getElementById("Postalcode").value;
	if(a.length!=6){
	    document.getElementById("pt").innerText="格式错误";
	}
	else{
		document.getElementById("pt").innerText="";
	}
}  
function showError4(){
	var a = document.getElementById("telephone").value;
	if(a.length!=11){
	    document.getElementById("ph").innerText="11位手机号";
	}
	else{
		document.getElementById("ph").innerText="";
	}
} 

function checktext(text) 
{ 
allValid = true; 
for (i = 0; i < text.length; i++) 
{ 
if (text.charAt(i) != " ") 
{ 
allValid = false; 
break; 
} 
} 
return allValid; 
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
function validate(){
	if(form1.username.value==""){
		alert("用户名为空！请重新输入");
		loginform.username.focus();
	}
	else if(form1.password.value==""){
		alert("密码为空！请重新输入");
		loginform.password.focus();
	}
	else if(form1.surepsw.value==""){
		alert("请输入确认密码！");
		loginform.surepsw.focus();
	}
	else if(form1.password.value!=form1.surepsw.value){
		alert("两次密码输入不同！请重新输入");
	}
	else if(form1.postalAdds.value==""){
		alert("通讯地址为必填项！请重新输入");
	}
	else if(form1.lawPeople.value==""){
		alert("法人代表为必填项！请重新输入");
	}
	else if(form1.contacts.value==""){
		alert("联系人为必填项！请重新输入");
	}
	else if(form1.email.value==""){
		alert("电子邮箱为必填项！请重新输入");
	}
	else if(form1.cellphone.value==""){
		alert("手机号为必填项！请重新输入");
	}
	else if(form1.telephone.value==""){
		alert("固定电话为必填项！请重新输入");
	}
	else if(form1.faxAds.value==""){
		alert("传真号为必填项！请重新输入");
	}
	else if(form1.InstSx.value==""){
		alert("机构属性为必填项！请重新输入");
	}
	else{
		window.location="SignUser.jsp";
	}
}
</script>
<style type="text/css">
<!--
.STYLE2{
	font-family: "幼圆";
	font-size: 18px;
	color: #000000;
	font-weight: bold;
}
.STYLE22{
	font-family: "幼圆";
	font-size: 18px;
	color: #000000;
}
.STYLE222{
	font-family: "幼圆";
	font-size: 14px;
	color: #000000;
}
.STYLE3{
	font-family: "宋体";
	font-size: 14px;
	color: #000000;
}
.red{
	color: #ff0000;}
-->
</style>
</head>
<body>
<form action="userRegister.action" method="post">
<input name="param" type="hidden" value="1">
	 <table  width="1050" height="539" border="3" align="center" align="center" class="STYLE22">
		<tr>
		  <td height="60" colspan="9"><div align="center"><span class="STYLE2">企业注册 <a class="STYLE22">(带<i class="red"> * </i>号的为必填项,信息为以后使用,请认真填写.)</a></span> </div>
	      </td>
  </tr>
		<tr>
    <td colspan="3">组织机构编码：<i class="red">*</i></td>
    <td colspan="2"><input name="user.cid" type="text" id="C_ID" value="${user.cid}"></td>
    <td>机构全称：<i class="red">*</i></td>
    <td><input name="user.cname" type="text" id="cname" value="${user.cname}"></td>
    <td>归口管理部门：</td>
    <td><select name="user.government" id="government" value="${user.gouernment}">
    <option value="1">1</option>
    <option value="2">2</option>
    	</select>
    </td>
  </tr>
  
  <tr>
    <td colspan="3">登录密码：<i class="red">*</i></td>
    <td colspan="2"><input name="user.password" type="password" id="Password" value="${user.password}"></td>
    <td width="165">确认密码：<i class="red">*</i></td>
    <td colspan="3"><input name="surepw" type="password" id="surepw" onchange="passwd();">
    <span id="pd" style="display: inline;"></span>
    </td>
  </tr>
  <tr>
    <td colspan="3">通讯地址：<i class="red">*</i></td>
    <td colspan="3"><input name="user.address" type="text" id="Address" size=40 value="${user.address}"></td>
    <td width="165">所在地域：<i class="red">*</i></td>
    <td colspan="2">
    <select name="user.city" value="${user.city}">
				<option value="石家庄市">石家庄市</option>
				<option value="唐山市">唐山市</option>
				<option value="秦皇岛市">秦皇岛市</option>
				<option value="邯郸市">邯郸市</option>
				<option value="邢台市">邢台市</option>
				<option value="保定市">保定市</option>
				<option value="张家口市">张家口市</option>
				<option value="承德市">承德市</option>
				<option value="沧州市">沧州市</option>
				<option value="廊坊市">廊坊市</option>
				<option value="衡水市">衡水市</option>
				<option value="定州市">定州市</option>
				<option value="辛集市">辛集市</option>
				<option value="其他（河北工大）">其他（河北工大）</option>
				</select>
  </tr>
  <tr>
    <td colspan="3">网 址：</td>
    <td colspan="2"><input name="user.internet" type="text" id="Internet"  onchange="showError1();" value="${user.internet}">
     <span id="web" style="display: inline;"></span>
    </td>
    <td>电子邮箱：<i class="red">*</i></td>
    <td colspan="3"><input name="user.email" type="text" id="Email"  onchange="showError2();" value="${user.email}">
    <span id="em" style="display: inline;"></span>
    </td>
  </tr>
  <tr>
    <td colspan="3">法人代表：<i class="red">*</i></td>
    <td colspan="2"><input name="user.people" type="text" id="People" value="${user.people}"></td>
    <td>邮政编码：</td>
    <td colspan="3"><input name="user.postalcode" type="text" id="Postalcode" onchange="showError3();" value="${user.postalcode}">
    <span id="pt" style="display: inline;"></span>
    </td>
  </tr>
  <tr>
    <td colspan="3" rowspan="2">联系人：<i class="red">*</i></td>
    <td colspan="1" rowspan="2"><input name="user.linkman" type="text" id="Linkman" value="${user.linkman}"></td>
    <td height="36">电话：</td>
    <td width="89">固定：<i class="red">*</i></td>
    <td width="181"><input name="user.phone" type="text" id="Phone" value="${user.phone}"></td>
    <td width="79">手机：<i class="red">*</i></td>
    <td width="219"><input name="user.telephone" type="text" id="telephone" onchange="showError4();" value="${user.telephone}">
    <span id="ph" style="display: inline;"></span>
    </td>
  </tr>
  <tr>
    <td colspan="2" height="36">传真：</td>
    <td colspan="3"><input name="user.fax" type="text" id="Fax" value="${user.fax}"></td>
  </tr>
  <tr>
    <td colspan="4">机构属性：<i class="red">*</i></td>
    <td colspan="5"><input type="radio" name="user.cnature" value="企业" value="${user.cnature}"/>企业 &nbsp;
                <input type="radio" name="user.cnature" value="高等院校" value="${user.cnature}"/>高等院校 &nbsp;
                <input type="radio" name="user.cnature" value="研究机构 " value="${user.cnature}"/>研究机构 &nbsp;
                <input type="radio" name="user.cnature" value="其他" value="${user.cnature}"/>其他&nbsp;    </td>
  </tr>
  <tr>
    <td colspan="4">机构简介：<i class="red">*（主要包括基本情况、现有研究基础等，限200字）</i></td>
    <td colspan="5"><textarea name="user.synopsis" value="${user.synopsis}" id="Synopsis" rows="10" cols="75" onKeyDown="gbcount(this.form.Synopsis,this.form.total,this.form.used,this.form.remain);" 
    onKeyUp="gbcount(this.form.Synopsis,this.form.total,this.form.used,this.form.remain);"></textarea> 
<p>最多字数： 
<input disabled maxLength="4" name="total" size="3" value="500" class="inputtext"> 
已用字数： 
<input disabled maxLength="4" name="used" size="3" value="0" class="inputtext"> 
剩余字数： 
<input disabled maxLength="4" name="remain" size="3" value="500" class="inputtext"></td>
  </tr>
  <tr>
  <input type="hidden" name="user.who" value="1">
    <td colspan="9">
			<p align="center">
			<input type="submit" value="注册" class="STYLE22" style="margin-top:20px; margin-right:70px;color:#cc3300 "/>
			<input type="button" value="返回" onclick="window.history.back(-1)" class="STYLE22" style="margin-top:20px; margin-right:70px;color:#cc3300 "/>
</p>
</td>
		</tr> 
		</table>
	</form>
</body>
</html>