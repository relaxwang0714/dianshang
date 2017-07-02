package servlet.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.register ;
import servlet.control.*;
import DB.*;
import javax.servlet.*;

/**
 * Servlet implementation class HandleRegister
 */
@WebServlet("/HandleRegister")
public class HandleRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
        // TODO Auto-generated constructor stub
   public void init(ServletConfig config) throws ServletException{
	   super.init(config);
	   try{ Class.forName("com.mysql.jdbc.Driver");}
	   catch(Exception e){
		   System.out.print("shibai");
	   }
   }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		register_db ab = new register_db();
		String usename=new String(request.getParameter("logname").getBytes("ISO-8859-1"),"utf8");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"utf8");
		String realname=new String(request.getParameter("realname").getBytes("ISO-8859-1"),"utf8");
		String again_password = request.getParameter("again_password");
		register userBean = new register();
		request.setAttribute("userBean", userBean);
		if(!password.equals(again_password)){
			userBean.setBackNews("�������벻ͬ��ע��ʧ��");
			RequestDispatcher dispatcher = request.getRequestDispatcher("ע������.html");
			dispatcher.forward(request, response);
		}
		try{
		String backnews = ab.regist(usename, password, phone, address, realname);
		response.sendRedirect("success.html");
		
		}
		catch(Exception exp){
			System.out.print("ע��ʧ��");
		}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
	}
}
