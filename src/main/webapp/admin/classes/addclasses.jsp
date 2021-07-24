<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Class Management</h2>  

<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.Classes"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=ClasseDao.save(u);  
if(i>0){  
response.sendRedirect("addclasses-success.jsp");  
}else{  
response.sendRedirect("addclasses-error.jsp");  
}  
%>  
</body>
</html>