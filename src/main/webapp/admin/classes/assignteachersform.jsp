<!DOCTYPE html>  
<html>  
<head>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Class Management</h2>  

<%@page import="com.slphase2project.*"%>  
  
<%  
String class_id=request.getParameter("class_id");  
Classes u=ClasseDao.getRecordById(Integer.parseInt(class_id));  
%>  
  
<h3>Assign a Teacher</h3>  
<form action="assignteacher.jsp" method="post">  
<input type="hidden" name="class_id" value="<%=u.getClass_id() %>"/>  
<table class="table table-bordered table-striped" border="1" width="90%">  
<tr><td>Class Level:</td><td>  
<input type="number" name="class_level" disabled value="<%= u.getClass_level()%>" required="required"/></td></tr>
<tr><td>Section:</td><td>   
<input type="text" maxlength="1" name="section" disabled value="<%= u.getSection()%>" required="required"/></td></tr>
<tr><td>Subject ID:</td><td>
<input type="number" name="subject_id" disabled value="<%= u.getSubject_id()%>" required="required"/></td></tr> 
<tr><td>Teacher ID:</td><td>
<input type="number" name="teacher_id" value="<%= u.getTeacher_id()%>"/></td></tr>   
<tr><td colspan="2"><input type="submit" class="btn btn-primary" value="Assign Teacher"/></td></tr>  
</table>  
</form>  

  
</body>  
</html>  