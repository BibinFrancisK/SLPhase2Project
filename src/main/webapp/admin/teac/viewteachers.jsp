<!DOCTYPE html>  
  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Teacher Management</h2>  
<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h3>Teacher List</h3>  
<button type="button" class="btn btn-secondary btn-lg btn-block"><a href="addteacherform.jsp">Add New Teacher</a></button>  
<br>
<br>
<%  
List<Teacher> list = TeacherDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table class="table table-bordered table-striped" border="1" width="90%"> 
<tr><th>ID</th><th>First Name</th><th>Last Name</th> 
<th>Modify</th><th>Remove</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getTeach_id()}</td><td>${u.getFname()}</td><td>${u.getLname()}</td>   
<td><button type="button" class="btn btn-primary"><a href="editteacherform.jsp?teach_id=${u.getTeach_id()}">Edit</a></button></td>  
<td><button type="button" class="btn btn-danger"><a href="deleteteacher.jsp?teach_id=${u.getTeach_id()}">Delete</a></button></td></tr>  
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  