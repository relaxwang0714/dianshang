<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<%@ page import="DB.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	
	-->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/jquery.mobile-1.4.5.min.js"></script>
<link href="js/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  <% try{ 
			
			
			String username =(String)session.getAttribute("username");
	  		String password =(String)session.getAttribute("password");
	  		diannao_login ab = new diannao_login();
	  		int a = ab.login(username, password); 
	  	
	   if(a==1){
	   response.sendRedirect("person.jsp"); }}
	   catch(Exception e){
	   e.printStackTrace();} %>
  <div id="page" style="background-color:rgb(255,253,247);width:600;height:800" >
			<div class="login" align="center">
				
				<div class="logintop"><b>登录</b></h3></div>
				<div class="logincont">
  				<form action="submit.jsp" method="post">
 					
					<p><input type="text" name="username"  placeholder="用户名" style="width:200px;height:25px"></p>
					<br />
        			<p><input type="password" name="password"  placeholder="密码" style="width:200px;height:25px"></p>
					<br />
  				<input type="submit" name="submit" value="登&nbsp;录" style="width:200px;height:25px;background-color:rgb(133,183,68); font-weight:700;color:#FFFFFF">
  				</form>
				<a href="注册美化.html">注&nbsp;&nbsp;册</a>
				</div>
			</div>
		
	</div>
  	
   
		
	
  </body>
</html>
