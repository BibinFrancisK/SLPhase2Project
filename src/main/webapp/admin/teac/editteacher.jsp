<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.Teacher"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=TeacherDao.update(u);  
response.sendRedirect("viewteachers.jsp");  
%> 