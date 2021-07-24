<!DOCTYPE html>  
<html>  
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Classroom Management</h2>  

<%@page import="com.slphase2project.*"%>  
  
<%  
String classroom_id=request.getParameter("classroom_id");  
ClassRoom u=ClassRoomDAO.getRecordById(Integer.parseInt(classroom_id));  
%>  
  
<h3>Edit Classroom Details</h3>  
<form action="editclassroom.jsp" method="post">  
<input type="hidden" name="classroom_id" value="<%=u.getClassroom_id() %>"/>  
<table class="table table-bordered table-striped" border="1" width="90%"> 
<tr><td>Class Level:</td><td>  
<input type="number" name="class_level" value="<%= u.getClass_level()%>" required="required"/></td></tr>
<tr><td>Section:</td><td>   
<input type="text" name="section" maxlength="1" value="<%= u.getSection()%>" required="required"/></td></tr>
<tr><td>Status:</td><td>
<input type="text" name="status" min="0" max="1" value="<%= u.getStatus()%>" required="required"/></td></tr>   
<tr><td colspan="2"><input type="submit" class="btn btn-primary" value="Edit Classroom"/></td></tr>  
</table>  
</form>  

  
</body>  
</html>  