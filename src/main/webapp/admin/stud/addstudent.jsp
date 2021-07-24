<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="../menu.jsp" /> 
<div class="main">
<h1>Student Management</h1>  
<%@page import="com.slphase2project.StudentDao"%>  
<jsp:useBean id="u" class="com.slphase2project.Student"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=StudentDao.save(u);  
if(i>0){  
response.sendRedirect("addstudent-success.jsp");  
}else{  
response.sendRedirect("addstudent-error.jsp");  
}  
%>  
</body>
</html>