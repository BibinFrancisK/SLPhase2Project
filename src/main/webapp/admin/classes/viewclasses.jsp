<!DOCTYPE html>  
  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Class Management</h2>  

  
<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h3>Class List</h3>  
<button type="button" class="btn btn-secondary btn-lg btn-block"><a href="addclassesform.jsp">Add New Class</a></button>
<br>
<br>
<ol>
<li> You can assign a class for a subject by creating a new class or editing the existing list of classes.</li>
<li> You can assign a teacher to a class for a subject by using the edit option, in case you haven't assigned teacher during class creation.</li>
</ol>
<br>
<%  
List<Classes> list = ClasseDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table class="table table-bordered table-striped" border="1" width="90%"> 
<tr><th>Class ID</th><th>Class Level</th><th>Section</th> 
<th>Subject ID</th><th>Teacher ID</th><th>Modify</th><th>Remove</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getClass_id()}</td><td>${u.getClass_level()}</td><td>${u.getSection()}</td>  
<td>${u.getSubject_id()}</td><td>${u.getTeacher_id()}</td>   
<td><button type="button" class="btn btn-primary"><a href="editclassesform.jsp?class_id=${u.getClass_id()}">Edit</a></button></td>  
<td><button type="button" class="btn btn-danger"><a href="deleteclasses.jsp?class_id=${u.getClass_id()}">Delete</a></button></td></tr>  
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  