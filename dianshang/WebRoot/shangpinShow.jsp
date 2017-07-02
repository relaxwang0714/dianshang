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
    
    <title>My JSP 'shangjia3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/shangpinShow.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/jquery.mobile-1.4.5.min.js"></script>
	<link href="js/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
  </head>
  
  <body>
  <%! String s="";
  	String []a={};
 	 %>
 	 <%
		Connection con;
		Statement sql;
		ResultSet rs;
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception e){
			out.println("忘记把数据库的JDBC驱动程序复制到Jdk的扩展目录中");
		}
		try{
				database ab = new database();
			String sqlTxt ="select * from shangjia1";
			rs = ab.QuerySql(sqlTxt);
			while(rs.next()){
			s = s+rs.getString(2)+"@"+rs.getString(3)+"@"+rs.getString(4)+"@";
			}
			a=s.split("@");
			
		}
		catch(SQLException e){
			out.print(e);
		}
	 %>
  	<div id="page">
		<div class="top" align="center">
				<img src="images/l1.png" align="middle"/>
		</div>
		<div class="describe" align="center">
			<table>
  				<tr>
    				<td colspan="2" align="center"><%=a[0] %></td>
  				</tr>
  				<tr>
   					<td class="price" align="center">￥<%=a[1] %></td>
    				<td align="center">产地：<%=a[2] %></td>
  				</tr>
			</table>
		</div>
		<div id="pingjia">
			<a href="">
				<table>
					<tr>
						<td><b>商品评价:</td>
					</tr>
					<tr>
						<td><b>王泽华：</b>减肥所以最近一直只吃蔬菜，买了2次了</td>
					</tr>
				</table>
			</a>
		</div><br />
		<p class="STYLE1">商品详情：</p>
		<p><hr style="height:10px;border:none;border-top:10px groove skyblue;"></p>
		<div class="picture" align="center"><img src="images/p1.png" /></div>
		<div class="picture" align="center"><img src="images/p2.png" /></div>
		<div class="picture" align="center"><img src="images/p3.png" /></div>
		<div id="foot">
			<a href="shangjia2.jsp"><div class="fanhui">返回</div></a>
			<a href=""><div class="lianxi">联系卖家</div></a>
			<a href=""><div class="shoucang">收藏店铺</div></a>
			<a href=""><div class="gouwuche">加入购物车</div></a>
			<a href=""><div class="buy">立即购买</div></a>
		</div>
	</div> 
  </body>
</html>
