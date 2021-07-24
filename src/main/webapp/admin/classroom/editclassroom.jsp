<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.ClassRoom"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=ClassRoomDAO.update(u);  
response.sendRedirect("viewclassroom.jsp");  
%> 