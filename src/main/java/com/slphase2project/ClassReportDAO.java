package com.slphase2project;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClassReportDAO {

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_slphase2proj","slprojectuser","slp2pro34@*(");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	
	public static List<ClassReport> getAllRecords(int class_level){  
	    List<ClassReport> list=new ArrayList<ClassReport>();  
	      
	    try{  
	        Connection con=getConnection(); 
	        String query = "call class_report(?)";
            CallableStatement cb = con.prepareCall(query);
            cb.setInt(1, class_level);
            ResultSet rs = cb.executeQuery();
	         
	        while(rs.next()){  
	            ClassReport u = new ClassReport(); 
	            u.setStud_id(rs.getInt("stud_id"));
	            u.setStudent_fname(rs.getString("student_fname"));
	            u.setStudent_lname(rs.getString("student_lname"));
	            u.setClass_level(rs.getInt("class_level"));
	            u.setSection(rs.getString("section"));
	            u.setTeach_fname(rs.getString("teach_fname"));
	            u.setTeach_lname(rs.getString("teach_lname"));
	            u.setSubject(rs.getString("subject"));
	            list.add(u);  
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	
}
