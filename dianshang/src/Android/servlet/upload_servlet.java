package Android.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import DB.Android_upload;
import DB.database;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class upload_servlet
 */
@WebServlet("/upload_servlet")
public class upload_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upload_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String filepath="C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\dianshang\\images\\upload_image" ;
		  File file = new File(filepath);
		  if (!file.isDirectory()) {
		          System.out.println("文件");
		          System.out.println("path=" + file.getPath());
		          System.out.println("absolutepath=" + file.getAbsolutePath());
		          System.out.println("name=" + file.getName());

		  } else if (file.isDirectory()) {
		          System.out.println("文件夹");
		          
		          String[] filelist = file.list();
		          
		        
		          
		          for (int i = 0; i < filelist.length; i++) {
		        	  Android_upload ab = new Android_upload ();
		        	  try{
		        	  String c = ab.update(filelist[i],i+9);}
		        	  catch(Exception e){System.out.println("wrong");}
		                  File readfile = new File(filepath + "\\" + filelist[i]);
		                  if (!readfile.isDirectory()) {
		                          System.out.println("path=" + readfile.getPath());
		                          System.out.println("absolutepath="
		                                          + readfile.getAbsolutePath());
		                          System.out.println("name=" + readfile.getName());

		                  } else if (readfile.isDirectory()) {
		                          System.out.print("wrong");
		                  }
		          }
		String introduction = new String(request.getParameter("introduction").getBytes("ISO-8859-1"),"utf8");
		String price=new String( request.getParameter("price").getBytes("ISO-8859-1"),"utf8");
		String chandi=new String( request.getParameter("chandi").getBytes("ISO-8859-1"),"utf8");
		Android_upload ab = new Android_upload ();
		System.out.println(introduction);
		System.out.println(price);
		try{
			int i=0;
			String b = ab.regist(introduction, price, chandi,filelist[i]);
			
			i++;
			System.out.println(b);
			response.setContentType("text/html; charset=utf8");
				Gson gson = new Gson();
			/*	login_servlet success = new login_servlet();
					success.setUsename(user);
					success.setPassword(password);
					String jsonStr = gson.toJson(success);  */
				//用于声明一个json对象,然后把值给放进去
				JSONObject jsonObj = new JSONObject(); 
				jsonObj.put("result", b); 
				
				response.getWriter().println(jsonObj.toString());
				
			}
			catch(Exception ex)	{
				ex.printStackTrace();
			}
		
		         
		        	
		        	  
		        	  
		          }
			}
			
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
