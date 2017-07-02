<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import= "otherjava.show_gouwu" %>
<%@ page import= "java.util.ArrayList"  %>
<%@ page import="java.util.Map.Entry" %>
<%! int c=0; %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showbusiness.jsp' starting page</title>
    
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
  <% show_gouwu ab = new show_gouwu();
  	ArrayList list = new ArrayList();
  	list =ab.show();
  	String []amount = new String [100];
  	String []introduction = new String[100];
  	String []price = new String[100];
  	for(int i=0;i<list.size();i++){
  	Map map = (Map)list.get(i);
  	c++;
  	amount [i] = (String)map.get("amount");
  	introduction[i] = (String)map.get("introduction");
  	price[i] =(String)map.get("price");
  	
  	
  //	Iterator<String> iter = map.keySet().iterator();
//while(iter.hasNext()) {
//System.out.println(iter.next());
//}
//	Iterator<Entry<String, String>> itor = map.entrySet().iterator();
//	while(itor.hasNext()) {
//	Entry<String, String> entry = itor.next();
//	amount[i] = entry.getValue();
//	System.out.println(entry.getKey());
//	System.out.println(entry.getValue());
//}}
}
  	%>
    
    <table>
    <%for(int b=0; b<c; b++){ %>
   <tr> <td><%=amount[b] %> </td></tr>
   <tr><td><%=introduction[b] %></td></tr>
   <tr><td><%=price[b] %></td></tr>
    <% }%>
    
    </table>
  </body>
</html>
