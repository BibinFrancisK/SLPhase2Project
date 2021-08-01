package com.slphase2project;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClasseDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_slphase2proj","slprojectuser","slp2pro34@*(");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Classes u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into classes(class_level, section, subject_id, teacher_id) values(?,?,?,?)");  
	        ps.setInt(1,u.getClass_level());  
	        ps.setString(2,u.getSection());  
	        ps.setInt(3,u.getSubject_id());  
	        ps.setInt(4,u.getTeacher_id()); 
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Classes u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update classes set class_level=?,section=?,subject_id=?,teacher_id=? where class_id=?"); 
	        
	        ps.setInt(1,u.getClass_level());  
	        ps.setString(2,u.getSection());  
	        ps.setInt(3,u.getSubject_id());  
	        ps.setInt(4,u.getTeacher_id());
	        ps.setInt(5,u.getClass_id());
	        status=ps.executeUpdate(); 

	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	
	public static int assignTeacher(Classes u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update classes set teacher_id=? where class_id=?"); 
	        
	        //ps.setInt(1,u.getClass_level());  
	       // ps.setString(2,u.getSection());  
	        //ps.setInt(3,u.getSubject_id());  
	        ps.setInt(1,u.getTeacher_id());
	        ps.setInt(2,u.getClass_id());
	        status=ps.executeUpdate(); 

	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	
	
	
	
	
	
	
	
	
	
	public static int delete(Classes u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from classes where class_id=?");  
	        ps.setInt(1,u.getClass_id());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Classes> getAllRecords(){  
	    List<Classes> list=new ArrayList<Classes>();  
	      
	    try{  
	        Connection con=getConnection();  
	        String query = "call classes_list()";
            CallableStatement cb = con.prepareCall(query);
	        ResultSet rs=cb.executeQuery();  
	        while(rs.next()){  
	            Classes u=new Classes(); 
	            
	            u.setClass_id(rs.getInt("class_id"));
	            u.setClass_level(rs.getInt("class_level"));
	            u.setSection(rs.getString("section"));
	            u.setSubject_id(rs.getInt("subject_id"));
	            u.setTeacher_id(rs.getInt("teacher_id"));
	            
	            u.setName(rs.getString("name"));
	            u.setFname(rs.getString("fname"));
	            u.setLname(rs.getString("lname"));
	            
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	public static List<Classes> getUnassignedClasses(){  
	    List<Classes> list=new ArrayList<Classes>();  
	      
	    try{  
	        Connection con=getConnection();  
	        String query = "call unassigned_classes_list()";
            CallableStatement cb = con.prepareCall(query);
	        ResultSet rs=cb.executeQuery();  
	        while(rs.next()){  
	            Classes u=new Classes(); 
	            
	            u.setClass_id(rs.getInt("class_id"));
	            u.setClass_level(rs.getInt("class_level"));
	            u.setSection(rs.getString("section"));
	            u.setSubject_id(rs.getInt("subject_id"));
	            u.setTeacher_id(rs.getInt("teacher_id"));
	            
	            u.setName(rs.getString("name"));
	            u.setFname(rs.getString("fname"));
	            u.setLname(rs.getString("lname"));
	            
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	public static Classes getRecordById(int class_id){  
	    Classes u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from classes where class_id=?");  
	        ps.setInt(1,class_id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Classes();  
	            u.setClass_id(rs.getInt("class_id"));
	            u.setClass_level(rs.getInt("class_level"));
	            u.setSection(rs.getString("section"));
	            u.setSubject_id(rs.getInt("subject_id"));
	            u.setTeacher_id(rs.getInt("teacher_id"));
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  


}
