<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="../menu.jsp" /> 
<div class="main">
<h2>Subject Management</h2>  

<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.Subject"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=SubjectDao.save(u);  
if(i>0){  
response.sendRedirect("addsubject-success.jsp");  
}else{  
response.sendRedirect("addsubject-error.jsp");  
}  
%>  
</body>
</html>