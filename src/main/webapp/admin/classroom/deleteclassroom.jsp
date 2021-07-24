<%@page import="com.slphase2project.*"%>  
<jsp:useBean id="u" class="com.slphase2project.ClassRoom"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
ClassRoomDAO.delete(u);  
response.sendRedirect("viewclassroom.jsp");  
%>  