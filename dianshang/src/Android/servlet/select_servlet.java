package Android.servlet;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.mysql.fabric.xmlrpc.base.Array;
import DB.Android_select;
import javassist.bytecode.Descriptor.Iterator;
import net.sf.json.JSONArray;
/**
 * Servlet implementation class select_servlet
 */
@WebServlet("/select_servlet")
public class select_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public select_servlet() {
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
		
		try{
			Gson gson = new Gson();
			 ArrayList list = new ArrayList();
			 Android_select bc = new Android_select();
			 list = bc.select();
			 JSONArray jsonArray = JSONArray.fromObject(list);
			 response.getWriter().println(jsonArray.toString());
			 java.util.Iterator it = list.iterator();
			 
			 while(it.hasNext()){
			     System.out.println(it.next());
			 }
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
