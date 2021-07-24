<!DOCTYPE html>  
<html>  
<head>  
<jsp:include page="../menu.jsp" /> 
<div class="main"> 

<jsp:useBean id="u" class="com.slphase2project.ClassReport"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<h2>Class Report</h2>  

<form method ="get" action="viewclassreport.jsp">
Enter Class Level: <input type="number" name="class_level" required="required"/><br><br>
<input type="submit" class="btn btn-primary" value="View Report" ><br/>
</form>


</body>  
</html>  