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
    
    <title>My JSP 'shangjia2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/shangjiastyle1.css" rel="stylesheet" type="text/css" />
	<link href="js/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
  </head>
  
  <body>
    

	 <div id="page">
  <div id="content">
	<div id="list2">
		<% 
	 	ResultSet rs;
		database dm=new database();
		String sqlTxt ="select * from shangjia1";
		rs =dm.QuerySql(sqlTxt);
		int li=0;
		while(rs.next()){
			
			li+=1;
			
			if(li%2!=0){
out.println("<div class=\"l1\">");

%><!--<img alt="" src="/upload/<%=rs.getString(5)%>">--> <%  
out.println("<a href=\"\"><img src=\"images/"+rs.getString(5)+"\"></a>");
out.println("		<br />");
out.println(" 		<table width=\"290\">");
out.println("	 		<tr>");
out.println("				<td><a href=\"\">"+rs.getString(2)+"</a></td>");
out.println("			</tr>");
out.println("			<tr>");
out.println("				<td><span class=\"jiage\">￥"+rs.getString(3)+"</span></td>");
out.println("			</tr>");
out.println("		</table>");
out.println("<a href=\"gouwuche?introduction="+rs.getString(2)+"&&price="+rs.getString(3)+"&&chandi=1\">加入购物车</a>");

out.println("    </div>");
			}
			else{
				out.println("<div class=\"l2\">");
out.println("<a href=\"\"><img src=\"images/"+rs.getString(5)+"\"></img></a>");

out.println("		<br />");
out.println(" 		<table width=\"290\">");
out.println("	 		<tr>");
out.println("				<td><a href=\"\">"+rs.getString(2)+"</a></td>");
out.println("			</tr>");
out.println("			<tr>");
out.println("				<td><span class=\"jiage\">￥"+rs.getString(3)+"</span></td>");
out.println("			</tr>");
out.println("		</table>");
out.println("<a href=\"gouwuche?introduction="+rs.getString(2)+"&&price="+rs.getString(3)+"&&chandi=1\">加入购物车</a>");
out.println("    </div>");
			}
			}
	  %>
		
	 </div>
</div>
  </body>
</html>
