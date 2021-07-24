<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Classroom Management</h2>  

<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.ClassRoom"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=ClassRoomDAO.save(u);  
if(i>0){  
response.sendRedirect("addclassroom-success.jsp");  
}else{  
response.sendRedirect("addclassroom-error.jsp");  
}  
%>  
</body>
</html>