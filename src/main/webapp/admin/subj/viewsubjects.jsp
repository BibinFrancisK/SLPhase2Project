<!DOCTYPE html>  
  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Subject Management</h2>  
 
  
<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h3>Subject List</h3>  
<button type="button" class="btn btn-secondary btn-lg btn-block"><a href="addsubjectform.jsp">Add New Subject</a></button>  
<br>
<br>
<%  
List<Subject> list = SubjectDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table class="table table-bordered table-striped" border="1" width="90%">  
<tr><th>Subject ID</th><th>Name</th><th>Class ID</th><th>Teacher ID</th> 
<th>Status</th><th>Modify</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getCourse_id()}</td><td>${u.getName()}</td><td>${u.getClass_id()}</td>  
<td>${u.getTeacher_id()}</td>
<td><button type="button" class="btn btn-primary"><a href="editsubjectform.jsp?course_id=${u.getCourse_id()}">Edit</a></button></td>  
<td><button type="button" class="btn btn-danger"><a href="deletesubject.jsp?course_id=${u.getCourse_id()}">Delete</a></button></td></tr>  
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  