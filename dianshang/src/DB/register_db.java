package DB;
import DB.database;
import java.sql.*;
public class register_db {
public static String regist(String usename,String password,String phone,String address,String realname)
throws Exception{
		database ab = new database();
		ResultSet rs = null;
		int i =0;
		String badnews ="ע��ʧ��";
		String backnews = "ע��ɹ���";
		String sqlText = "insert into user values('"+usename+"','"+password+"','"+phone+"','"+address+"','"+realname+"')";
		try{
		 i = ab.ExcuteSql(sqlText);
		if(i ==1){
			return  backnews;}
		else
		{return badnews;}}
		catch(SQLException exp){
			return badnews;
			
		}
		
		
		
	
	
}
}