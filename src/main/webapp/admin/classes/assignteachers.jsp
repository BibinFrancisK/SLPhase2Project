<!DOCTYPE html>  
  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Class Management</h2>  
<br>
  
<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h3>List of Unassigned Classes</h3>  

<br>
<%  
List<Classes> list = ClasseDao.getUnassignedClasses();  
request.setAttribute("list",list);  
%>

  
<table class="table table-bordered table-striped" border="1" width="90%"> 
<tr><th>Class ID</th><th>Class Level</th><th>Section</th> 
<th>Subject</th><th>Teacher</th><th>Assign or Edit</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getClass_id()}</td><td>${u.getClass_level()}</td><td>${u.getSection()}</td>  
<td>${u.getName()}</td><td>Unassigned</td>   
<td><button type="button" class="btn btn-primary"><a href="assignteachersform.jsp?class_id=${u.getClass_id()}">Assign</a></button></td>  
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  