package Android.servlet;

import com.google.gson.*;
import net.sf.json.*;
import DB.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login_servlet
 */
@WebServlet("/login_servlet")
public class login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String usename;
    private String password;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_servlet() {
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
		String user = new String( request.getParameter("user").getBytes("ISO-8859-1"),"utf8");
		String password =new String( request.getParameter("pass").getBytes("ISO-8859-1"),"utf8");
		Android_login ab = new Android_login ();
		System.out.println(user);
		System.out.println(password);
		try{
		int b = ab.login(user, password);
		System.out.println(b);
		response.setContentType("text/html; charset=utf8");
			Gson gson = new Gson();
		/*	login_servlet success = new login_servlet();
				success.setUsename(user);
				success.setPassword(password);
				String jsonStr = gson.toJson(success);  */
			//用于声明一个json对象,然后把值给放进去
			JSONObject jsonObj = new JSONObject(); 
			jsonObj.put("user", b); 
			response.getWriter().println(jsonObj.toString());
			
		}
		catch(Exception ex)	{
			ex.printStackTrace();
		}
		}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doPost(request, response);
	}
	
		
	

	public String getUsename() {
		return usename;
	}

	public void setUsename(String usename) {
		this.usename = usename;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
