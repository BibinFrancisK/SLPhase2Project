package com.slphase2project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TeacherDao {
	
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_slphase2proj","slprojectuser","slp2pro34@*(");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Teacher u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into teachers(fname, lname, status) values(?,?,?)");  
	        ps.setString(1,u.getFname());  
	        ps.setString(2,u.getLname());  
	        ps.setInt(3,u.getStatus());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Teacher u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update teachers set fname=?,lname=?,status=? where teach_id=?"); 
	        
	        ps.setString(1,u.getFname());  
	        ps.setString(2,u.getLname());
	        ps.setInt(3,u.getStatus());
	        ps.setInt(4,u.getTeach_id());  
	        status=ps.executeUpdate(); 

	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Teacher u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from teachers where teach_id=?");  
	        ps.setInt(1,u.getTeach_id());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Teacher> getAllRecords(){  
	    List<Teacher> list=new ArrayList<Teacher>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from teachers");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Teacher u=new Teacher();  
	            u.setTeach_id(rs.getInt("teach_id"));  
	            u.setFname(rs.getString("fname"));  
	            u.setLname(rs.getString("lname"));   
	            u.setStatus(rs.getInt("status"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Teacher getRecordById(int teach_id){  
	    Teacher u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from teachers where teach_id=?");  
	        ps.setInt(1,teach_id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Teacher();  
	            u.setTeach_id(rs.getInt("teach_id"));  
	            u.setFname(rs.getString("fname"));  
	            u.setLname(rs.getString("lname"));    
	            u.setStatus(rs.getInt("status"));  
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  

}
