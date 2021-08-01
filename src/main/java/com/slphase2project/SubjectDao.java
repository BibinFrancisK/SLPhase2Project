package com.slphase2project;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SubjectDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_slphase2proj","slprojectuser","slp2pro34@*(");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Subject u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into subjects(name) values(?)");  
	        ps.setString(1,u.getName());  
	        //ps.setInt(2,u.getStatus());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Subject u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update subjects set name=? where course_id=?"); 
	        
	        ps.setString(1,u.getName());  
	        //ps.setInt(2,u.getStatus());
	        ps.setInt(2,u.getCourse_id());
	        status=ps.executeUpdate(); 

	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Subject u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("update subjects set status = 0 where course_id=?");  
	        ps.setInt(1,u.getCourse_id());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Subject> getAllRecords(){  
	    List<Subject> list=new ArrayList<Subject>();  
	      
	    try{  
	        Connection con=getConnection();  
	        String query = "select * from subjects where status = 1;";
	        CallableStatement cb = con.prepareCall(query);
	      
	        ResultSet rs=cb.executeQuery();  
	        while(rs.next()){  
	            Subject u=new Subject();  
	            u.setCourse_id(rs.getInt("course_id"));  
	            u.setName(rs.getString("name"));  
	            //u.setStatus(rs.getInt("status"));            	           
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Subject getRecordById(int course_id){  
	    Subject u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from subjects where course_id=?");  
	        ps.setInt(1,course_id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Subject();  
	            u.setCourse_id(rs.getInt("course_id"));  
	            u.setName(rs.getString("name"));  
	            //u.setStatus(rs.getInt("status"));                
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  


}
