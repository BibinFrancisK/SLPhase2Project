<!DOCTYPE html>  
  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Class Management</h2>  

  
<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 <br>
<h3>Class List</h3>  
<br>

<br>
<%  
List<Classes> list = ClasseDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table class="table table-bordered table-striped" border="1" width="90%"> 
<tr><th>Class ID</th><th>Class Level</th><th>Section</th> 
<th>Subject</th><th>Teacher</th><th>Modify</th><th>Remove</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getClass_id()}</td><td>${u.getClass_level()}</td><td>${u.getSection()}</td>  
<td>${u.getName()}</td><td>${u.getFname() += " "}${u.getLname()}</td>   
<td><button type="button" class="btn btn-primary"><a href="editclassesform.jsp?class_id=${u.getClass_id()}">Edit</a></button></td>  
<td><button type="button" class="btn btn-danger"><a href="deleteclasses.jsp?class_id=${u.getClass_id()}">Delete</a></button></td></tr>  
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  