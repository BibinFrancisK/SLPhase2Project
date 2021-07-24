<!DOCTYPE html>  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Subject Management</h2>  

<%@page import="com.slphase2project.*"%>  
  
<%  
String course_id=request.getParameter("course_id");  
Subject u=SubjectDao.getRecordById(Integer.parseInt(course_id));  
%>  
  
<h3>Edit Subject Details</h3>  
<form action="editsubject.jsp" method="post">  
<input type="hidden" name="course_id" value="<%=u.getCourse_id() %>"/>  
<table class="table table-bordered table-striped" border="1" width="90%">  
<tr><td>Course Name:</td><td>  
<input type="text" name="name" value="<%= u.getName()%>" required="required"/></td></tr>
<tr><td>Class ID:</td><td>   
<input type="number" name="class_id" value="<%= u.getClass_id()%>" required="required"/></td></tr>
<tr><td>Teacher ID:</td><td>
<input type="number" name="teacher_id" value="<%= u.getTeacher_id()%>" required="required"/></td></tr>   
<tr><td colspan="2"><input type="submit" class="btn btn-primary" value="Edit Subject"/></td></tr>  
</table>  
</form>  

  
</body>  
</html>  