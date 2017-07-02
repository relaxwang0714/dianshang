<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script src="js/jquery-3.1.1.min.js"></script>
<script src="js/jquery.mobile-1.4.5.min.js"></script>
<link href="js/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
<link href="css/top.css" rel="stylesheet" type="text/css" />
  <body>
    <div id="page" style="background-image:url(images/top.png); width:600px; height:130px; background-size:cover;">
		<div class="top">
			<div class="dianpu" align="center">
				<img src="images/logo-tiansou.png" width=180px height=140px/><div class="shoucang" align="right"></div>
			</div>
		</div>
		<div class="nav">
			<a href="shangjia1.jsp" target="contents"><div class="n1">店首页</div></a>
			<a href="shangjia2.jsp" target="contents"><div class="n2">全部商品</div></a>
			<a href="login.jsp" target="contents"><div class="n3">个人中心</div></a> 
		</div>
  </body>
</html>
