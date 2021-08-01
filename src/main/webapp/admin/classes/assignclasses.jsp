<!DOCTYPE html>  
  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Class Management</h2>  

  
<%@page import="com.slphase2project.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  

<button type="button" class="btn btn-secondary btn-lg btn-block"><a href="addclassesform.jsp">Assign New Class</a></button>
<br>
<br>

<%  
List<Classes> list = ClasseDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
<h3>List of Classes</h3>   
<table class="table table-bordered table-striped" border="1" width="90%"> 
<tr><th>Class ID</th><th>Class Level</th><th>Section</th> 
<th>Subject</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getClass_id()}</td><td>${u.getClass_level()}</td><td>${u.getSection()}</td>  
<td>${u.getName()}</td>    
</c:forEach>  
</table>  
<br/>
  
</body>  
</html>  