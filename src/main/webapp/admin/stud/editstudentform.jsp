<!DOCTYPE html>  
<html>  
<head>  

<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Student Management</h2>    
<%@page import="com.slphase2project.*"%>  
  
<%  
String stud_id=request.getParameter("stud_id");  
Student u=StudentDao.getRecordById(Integer.parseInt(stud_id));  
%>  
  
<h3>Edit Student Details</h3>  
<form action="editstudent.jsp" method="post">  
<input type="hidden" name="stud_id" value="<%=u.getStud_id() %>"/>  
<table class="table table-bordered table-striped" border="1" width="90%">   
<tr><td>First Name:</td><td>  
<input type="text" name="fname" value="<%= u.getFname()%>" required="required"/></td></tr>
<tr><td>Last Name:</td><td>   
<input type="text" name="lname" value="<%= u.getLname()%>" required="required"/></td></tr>
<tr><td>Class Level:</td><td> 
<input type="number" name="class_name" value="<%= u.getClass_name()%>" required="required"/></td></tr> 
<tr><td>Section:</td><td>  
<input type="text" name="section" value="<%= u.getSection()%>" maxlength="1" required="required"/></td></tr>
<tr><td colspan="2"><input type="submit" class="btn btn-primary" value="Edit Student"/></td></tr>  
</table>  
</form>  

  
</body>  
</html>  