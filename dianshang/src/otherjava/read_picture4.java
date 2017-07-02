package otherjava;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.database;

/**
 * Servlet implementation class read_picture4
 */
@WebServlet("/read_picture4")
public class read_picture4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public read_picture4() {
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
		 System.out.print(1);
		String filepath="F:\\编程\\dianshang\\WebRoot\\images\\upload_image" ;
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
		          	
		               
		                  File readfile = new File(filepath + "\\" + filelist[i]);
		                  if (!readfile.isDirectory()) {
		                          System.out.println("path=" + readfile.getPath());
		                          System.out.println("absolutepath="
		                                          + readfile.getAbsolutePath());
		                          System.out.println("name=" + readfile.getName());

		                  } else if (readfile.isDirectory()) {
		                          System.out.print("wrong");;
		                  }
		          }
		          for(int i=0; i<filelist.length;i++){
		        	  
		        	  String sqlTxt="insert into pic values('"+filelist[i]+"')";
		        	  try{
		        		  database bc = new database();
		        	  int b=bc.ExcuteSql(sqlTxt);}
		        	   catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		        	  }
		        	  System.out.print(1);
		        	  
		        	  
		          }
		        	  
		          
		  }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
