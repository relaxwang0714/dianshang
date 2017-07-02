package otherjava;

import java.sql.*;
import java.util.ArrayList;

import com.google.gson.Gson;

import DB.*;
import net.sf.json.JSONArray;
public class show_gouwu {
	public static ArrayList show(){
	try{
		Gson gson = new Gson();
		 ArrayList list = new ArrayList();
		 selectgoods bc = new selectgoods();
		 list = bc.select();
		 java.util.Iterator it = list.iterator(); 
		 while(it.hasNext()){
		     System.out.println(it.next());
		 }
		 return list;
	}
	catch(Exception e){
		e.printStackTrace();
		return null;
		
	}
	
	}
}
	
