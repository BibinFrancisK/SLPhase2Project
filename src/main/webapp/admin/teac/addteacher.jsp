<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h1>Teacher Management</h1>  
<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.Teacher"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=TeacherDao.save(u);  
if(i>0){  
response.sendRedirect("addteacher-success.jsp");  
}else{  
response.sendRedirect("addteacher-error.jsp");  
}  
%>  
</body>
</html>