<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.Student"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=StudentDao.update(u);  
response.sendRedirect("viewstudents.jsp");  
%> 