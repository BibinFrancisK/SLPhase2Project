<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.Classes"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=ClasseDao.assignTeacher(u);  
response.sendRedirect("viewclasses.jsp");  
%> 