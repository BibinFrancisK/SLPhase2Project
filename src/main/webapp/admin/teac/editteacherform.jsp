<!DOCTYPE html>  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Teacher Management</h2>   
<%@page import="com.slphase2project.*"%>  
  
<%  
String teach_id=request.getParameter("teach_id");  
Teacher u=TeacherDao.getRecordById(Integer.parseInt(teach_id));  
%>  
  
<h3>Edit Student Details</h3>  
<form action="editteacher.jsp" method="post">  
<input type="hidden" name="teach_id" value="<%=u.getTeach_id() %>"/>  
<table class="table table-bordered table-striped" border="1" width="90%">   
<tr><td>First Name:</td><td>  
<input type="text" name="fname" value="<%= u.getFname()%>" required="required"/></td></tr>
<tr><td>Last Name:</td><td>   
<input type="text" name="lname" value="<%= u.getLname()%>" required="required"/></td></tr> 
<tr><td colspan="2"><input type="submit" class="btn btn-primary" value="Edit Teacher"/></td></tr>  
</table>  
</form>  

  
</body>  
</html>  