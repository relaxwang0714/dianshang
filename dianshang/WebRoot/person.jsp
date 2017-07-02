<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<%@ page import="DB.*" %>
<%! String b[] = new String[20]; %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'person.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/person.css" rel="stylesheet" type="text/css" />
	<link href="js/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
	<script type="text/javascript" src="jquery-3.1.1.min.js"></script>
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
		margin-right:30px;
		margin-top:5px;
	}
</style>

  </head>
  
  <body>
    <div id="page">
		<div class="nav">
			<a href="person.jsp" target="contents"><div class="shoppingCar">购物车</div></a> 
			<a href="allorder.html" target="contents"><div class="allorder">已购买商品</div></a>
			
		</div>
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
		int i =0;
		
            
		while(rs.next()){
		b[i] = rs.getString(1);
		i++; %>
			
				<tr>
					<td colspan="3"><hr style="height:2px;border:none;border-top:10px solid rgb(240,240,240);"></td>
				</tr>
				<tr>
					<td width="400px"><%=rs.getString(1) %></td>
					<td align="center"><%=rs.getString(3) %></td>
					<td align="center"><a href="delete_business?introduction=<%=rs.getString(1)%>">删除商品</a></td>
				</tr>
			
				<%	}%>
			</table>
			
			<td colspan="3"><hr style="height:2px;border:none;border-top:10px solid rgb(240,240,240);"></td>
			<div id="buy" align="right"><input type="button" value="立即购买" style="width:69.85px;height:21.6px" onclick="javascript:return buy();"/>
			</form></div>
	
		
		<center><a href="logout">退出登录</a></center>
		<div id="footer">
			<a href="shangjia1.jsp"><div class="foot">返回店铺</div></a>	
		</div>
		</div>
		
	</div>
	<script type="text/jscript">
	
	function buy() {
	var a = [];
var msg = "您真的确定了吗？\n\n请确认！";
if (confirm(msg)==true){
window.location.href="purchase";

}else{
return false;
}
}
</script>
  </body>
  
</html>
