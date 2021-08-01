package com.slphase2project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ClassRoomDAO {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_slphase2proj","slprojectuser","slp2pro34@*(");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(ClassRoom u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into classrooms(class_level, section) values(?,?)");  
	        ps.setInt(1,u.getClass_level());  
	        ps.setString(2,u.getSection());  
	        //ps.setInt(3,u.getStatus());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(ClassRoom u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update classrooms set class_level=?,section=? where classroom_id=?"); 
	        
	        ps.setInt(1,u.getClass_level());  
	        ps.setString(2,u.getSection());
	        //ps.setInt(3,u.getStatus());
	        ps.setInt(3,u.getClassroom_id()); 
	        status=ps.executeUpdate();  

	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(ClassRoom u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("update classrooms set status = 0 where classroom_id=?");  
	        ps.setInt(1,u.getClassroom_id());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<ClassRoom> getAllRecords(){  
	    List<ClassRoom> list=new ArrayList<ClassRoom>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from classrooms where status = 1");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	ClassRoom u=new ClassRoom();  
	            u.setClassroom_id(rs.getInt("classroom_id"));  
	            u.setClass_level(rs.getInt("class_level"));  
	            u.setSection(rs.getString("section"));   
	            //u.setStatus(rs.getInt("status"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	
	public static ClassRoom getRecordById(int classroom_id){  
		ClassRoom u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from classrooms where classroom_id=?");  
	        ps.setInt(1,classroom_id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new ClassRoom();  
	            u.setClassroom_id(rs.getInt("classroom_id"));  
	            u.setClass_level(rs.getInt("class_level"));  
	            u.setSection(rs.getString("section"));    
	            //u.setStatus(rs.getInt("status"));  
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  

}
