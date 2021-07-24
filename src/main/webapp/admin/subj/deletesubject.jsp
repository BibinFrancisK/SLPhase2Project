<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.Subject"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
SubjectDao.delete(u);  
response.sendRedirect("viewsubjects.jsp");  
%>  