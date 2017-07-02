<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<%@ page import="DB.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <base href="<%=basePath%>">
    
    <title>My JSP 'shopcar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	*{
		padding: 0;
		margin: 0;
	}
	#page{
		margin:0 auto;
		align:center;
		width:600px;
		height:auto;
		
	}
	table{
		width:600px;
		height:auto;
		border:#000000;
	}
	#buy{
		margin-right:27px;
		margin-top:5px;
	}
</style>

  </head>
  
  <body>
 
    <div id="page">
			<table align="center" style="word-wrap:break-word; word-break:break-all;" cellspacing="5">
				<tr>
					<td>商品信息</td>
					<td align="center">价格</td>
				</tr>
				 <% 
	 	ResultSet rs;
		database dm=new database();
		String sqlTxt ="select * from gouwuche";
		rs =dm.QuerySql(sqlTxt);
		int li=0;
		while(rs.next()){ %>
				<tr>
					<td colspan="3"><hr style="height:2px;border:none;border-top:10px solid rgb(240,240,240);"></td>
				</tr>
				<tr>
					<td width="400px"><%=rs.getString(1) %></td>
					<td align="center"><%=rs.getString(3) %></td>
					<td align="center"><input type="submit" value="删除该商品" /></td>
				</tr>
			
				<% 	}%>
<script type="text/jscript">
	
	function buy() {
var msg = "您真的确定了吗？\n\n请确认！";
if (confirm(msg)==true){

window.location.href="purchase";
}else{
return false;
}
}
</script>
			</table>
			<td colspan="3"><hr style="height:2px;border:none;border-top:10px solid rgb(240,240,240);"></td>
			<form action="good.jsp" method="post">
			<!--  <input type="hidden" name="introduction" value="<%=rs.getString(1) %>">
			<input type="hidden" name="price" value="<%=rs.getString(2) %>">
			<input type="hidden" name="amount" value="<%=rs.getString(3) %>"> -->
			<div id="buy" align="right"><input type="button" value="立即购买" style="width:69.85px;height:21.6px" onclick="javascript:return buy();"/>
			</div>
	</div>

  </body>
</html>
