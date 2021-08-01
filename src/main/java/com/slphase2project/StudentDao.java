package com.slphase2project;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.slphase2project.Student;  

public class StudentDao {
	

	  
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_slphase2proj","slprojectuser","slp2pro34@*(");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Student u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into students(fname, lname, class, section) values(?,?,?,?)");  
	        ps.setString(1,u.getFname());  
	        ps.setString(2,u.getLname());  
	        ps.setInt(3,u.getClass_name());  
	        ps.setString(4,u.getSection());  
	        //ps.setInt(5,u.getStatus());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Student u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update students set fname=?,lname=?,class=?,section=? where stud_id=?"); 
	        
	        ps.setString(1,u.getFname());  
	        ps.setString(2,u.getLname());  
	        ps.setInt(3,u.getClass_name());  
	        ps.setString(4,u.getSection());  
	        //ps.setInt(5,u.getStatus());  
	        ps.setInt(5,u.getStud_id());  
	        status=ps.executeUpdate(); 

	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Student u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("update students set status = 0 where stud_id=?");  
	        ps.setInt(1,u.getStud_id());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Student> getAllRecords(){  
	    List<Student> list=new ArrayList<Student>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from students where status = 1");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Student u=new Student();  
	            u.setStud_id(rs.getInt("stud_id"));  
	            u.setFname(rs.getString("fname"));  
	            u.setLname(rs.getString("lname"));  
	            u.setClass_name(rs.getInt("class"));  
	            u.setSection(rs.getString("section"));  
	            u.setStatus(rs.getInt("status"));  
	            
	            
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Student getRecordById(int stud_id){  
	    Student u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from students where stud_id=?");  
	        ps.setInt(1,stud_id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Student();  
	            u.setStud_id(rs.getInt("stud_id"));  
	            u.setFname(rs.getString("fname"));  
	            u.setLname(rs.getString("lname"));  
	            u.setClass_name(rs.getInt("class"));  
	            u.setSection(rs.getString("section"));  
	            //u.setStatus(rs.getInt("status"));  
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}  
