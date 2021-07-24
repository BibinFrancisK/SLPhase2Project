<!DOCTYPE html>  
<html>  

<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Student Management</h2>    
  
<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h3>Student List</h3>  
<button type="button" class="btn btn-secondary btn-lg btn-block"><a href="addstudentform.jsp">Add New Student</a></button>  
<br>
<br>
<%  
List<Student> list = StudentDao.getAllRecords();  
request.setAttribute("list",list);  
%>
<table class="table table-bordered table-striped" border="1" width="90%">  
<tr><th>ID</th><th>First Name</th><th>Last Name</th><th>Class</th>  
<th>Section</th><th>Status</th><th>Modify</th><th>Remove</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getStud_id()}</td><td>${u.getFname()}</td><td>${u.getLname()}</td>  
<td>${u.getClass_name()}</td><td>${u.getSection()}</td><td>${u.getStatus()}</td>  
<td><button type="button" class="btn btn-primary"><a href="editstudentform.jsp?stud_id=${u.getStud_id()}">Edit</a></button></td>  
<td><button type="button" class="btn btn-danger"><a href="deletestudent.jsp?stud_id=${u.getStud_id()}">Delete</a></button></td></tr>  
</c:forEach>  
</table> 
<br/>
</body>  
</html>  