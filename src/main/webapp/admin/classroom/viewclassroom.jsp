<!DOCTYPE html>  
  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Classroom Management</h2>  
 
  
<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h3>Classroom List</h3>  
<button type="button" onclick="addclassroomform.jsp" class="btn btn-secondary btn-lg btn-block"><a href="addclassroomform.jsp">Add New Classroom</a></button>  
<br>
<br>
<%  
List<ClassRoom> list = ClassRoomDAO.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table class="table table-bordered table-striped" border="1" width="90%"> 
<tr><th>ID</th><th>Level</th><th>Section</th><th>Status</th> 
<th>Modify</th><th>Remove</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getClassroom_id()}</td><td>${u.getClass_level()}</td><td>${u.getSection()}</td>  
<td>${u.getStatus()}</td>
<td><button type="button" class="btn btn-primary"><a href="editclassroomform.jsp?classroom_id=${u.getClassroom_id()}">Edit</a></button></td>  
<td><button type="button" class="btn btn-danger"><a href="deleteclassroom.jsp?classroom_id=${u.getClassroom_id()}">Delete</a></button></td></tr>  
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  