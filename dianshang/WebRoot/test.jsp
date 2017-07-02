<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<%@ page import="DB.database" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
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
  
<!--    <% ResultSet rs;
		database dm=new database();
		String sqlTxt ="select * from shangjia1";
		rs =dm.QuerySql(sqlTxt);
		while(rs.next()){
		String a = rs.getString(5);
		System.out.println("images/"+rs.getString(5));
		String ab ="images/"+rs.getString(5)+"";
		System.out.println(ab);
		%> <img src="../images/15.png"></img>
		<% 
		}
		int li=0;%> -->
	
		<img src="/upload/16.png"></img>

  <a href="gouwuche?introduction=<%=2%>&chandi=<%=3%>&price=<%=4%>">加入购物车</a>
  	
    <form action="submit.jsp" method="post">
    <input type="text" name="username">
    <input type="text" name="password">
    <input type="text" name="price">
    <input type="submit" name="submit" value="submit"></form>
    <img alt="" src="/upload/1.jpg">
  </body>
</html>
