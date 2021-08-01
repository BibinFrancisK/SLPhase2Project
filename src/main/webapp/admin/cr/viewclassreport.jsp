<!DOCTYPE html>  
  
<html>  
<head>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h1>Class Report</h1>  
  

<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
<%  
String class_level = request.getParameter("class_level"); 
List<ClassReport> list = ClassReportDAO.getAllRecords(Integer.parseInt(class_level));  
request.setAttribute("list",list); 
List<ClassReport> listTeachers = ClassReportDAO.getTeacherRecords(Integer.parseInt(class_level));  
request.setAttribute("listTeachers",listTeachers); 
%> 
<jsp:useBean id="u" class="com.slphase2project.ClassReportDAO"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 


<br>
<br>
 
<h4> Students at Class Level <%=class_level%></h4>
<table class="table table-bordered table-striped" border="1" width="90%">  
<tr><th>Stud ID</th><th>Student</th>
<th>Class</th><th>Section</th> 
<c:forEach items="${list}" var="u">  
<tr><td>${u.getStud_id()}</td><td>${u.getStudent_fname() += " "}${u.getStudent_lname()}</td>
<td>${u.getClass_level()}</td><td>${u.getSection()}</td>
</tr>   
</c:forEach>  
</table>  
<br/>

<h4> Teachers for Class Level <%=class_level%></h4>
<table class="table table-bordered table-striped" border="1" width="90%">  
<tr><th>Teacher</th><th>Subject</th>
<th>Class</th><th>Section</th> 
<c:forEach items="${listTeachers}" var="v">  
<tr><td>${v.getTeach_fname() += " "}${v.getTeach_lname()}</td><td>${v.getSubject()}</td>
<td>${v.getClass_level()}</td><td>${v.getSection()}</td>
</tr>   
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  





