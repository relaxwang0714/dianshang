<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="bean.register" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputRegister.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <h1 align="center">注册</h1>
  <form action="registerServlet" method="post" name="form" >
   <table align="center">
   
   <tr><td>用户名称 </td><td><input type="text" name="logname" required="required"></td></tr>
   <tr><td>用户密码</td><td><input type="text" name="password" required="required"></td></tr>
   <tr><td>重复密码</td><td><input type="text" name="again_password" required="required"></td></tr>
   <tr><td>联系电话</td><td><input type="text" name="phone" required="required"></td></tr>
   <tr><td>收货地址</td><td><input type="text" name="address" required="required"></td></tr>
   <tr><td>真实姓名</td><td><input type="text" name="realname" required="required"></td>
   <tr><td><input type="submit" name="submit"></td></tr>

   
   </table>
   </form>
 <!  register userBean = (register)request.getAttribute("userBean");%>
  <!=userBean.getBackNews()  >
  </body>
</html>
