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
%> 
<jsp:useBean id="u" class="com.slphase2project.ClassReportDAO"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 


<br>
<br>
  
<table class="table table-bordered table-striped" border="1" width="90%">  
<tr><th>Stud ID</th><th>Student FName</th><th>Student LName</th> 
<th>Class</th><th>Section</th><th>Teacher FName</th><th>Teacher LName</th><th>Subject</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getStud_id()}</td><td>${u.getStudent_fname()}</td><td>${u.getStudent_lname()}</td>
<td>${u.getClass_level()}</td><td>${u.getSection()}</td><td>${u.getTeach_fname()}</td>
<td>${u.getTeach_lname()}</td><td>${u.getSubject()}</td>
</tr>   
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  





