<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.Subject"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=SubjectDao.update(u);  
response.sendRedirect("viewsubjects.jsp");  
%> 