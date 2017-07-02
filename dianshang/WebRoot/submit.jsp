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
    
    <title>My JSP 'submit.jsp' starting page</title>
    
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
  <%  session.setMaxInactiveInterval(500);
    String username=request.getParameter("username");
    System.out.println(username);
    String password=new String(request.getParameter("password").getBytes("ISO8859_1"),"utf8"); 
    System.out.println(password) ;
    try {    
        Class.forName("com.mysql.jdbc.Driver");  
   
        String url = "jdbc:mysql://localhost:3306/dianshang?characterEncoding=utf8&&useSSL=true";  

        String usename = "root";  
 
        String psw = "123456";  
       
        Connection conn = DriverManager.getConnection(url,usename,psw);  
         
        if(conn != null){    
       	
            String sql="select * from user where username='"+username+"' and password='"+password+"'";  
            Statement stmt = conn.createStatement();  
            ResultSet rs= stmt.executeQuery(sql);    
            if(rs.next()){  
            	
            	session.setAttribute("username", username);
            	session.setAttribute("password", password);
                response.sendRedirect("person.jsp");                
            }else{  
                out.print("用户名或密码错误，请重新输入！");  
                %>  
                <a href="javascript:history.back()">返回</a>  
                <%   
            }            
            conn.close();  
        }else{  
           
            out.println("数据库连接失败！");                          
        }  
    } catch (ClassNotFoundException e) {  
        e.printStackTrace();  
    } catch (SQLException e) {  
        e.printStackTrace();  
    }  
%>  
 

</html>
