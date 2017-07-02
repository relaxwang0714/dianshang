package Android.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.Android_insert;
import net.sf.json.JSONObject;
/**
 * Servlet implementation class receive_good
 */
@WebServlet("/receive_good")
public class receive_good extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public receive_good() {
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
		String introduction = new String( request.getParameter("introduction").getBytes("ISO-8859-1"),"utf8");
		String amount =new String( request.getParameter("amount").getBytes("ISO-8859-1"),"utf8");
		String price = new String( request.getParameter("price").getBytes("ISO-8859-1"),"utf8");
		String chandi =new String( request.getParameter("chandi").getBytes("ISO-8859-1"),"utf8");
		Android_insert ab = new Android_insert();
		try{
		int i = ab.insert(introduction, amount, chandi, price);
		JSONObject jsonObj = new JSONObject(); 
		jsonObj.put("result", i); 
		response.getWriter().println(jsonObj.toString());
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
}
