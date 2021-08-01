<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<style>
body {
  font-family: 'Montserrat', sans-serif;
  padding-top: 50px;
}

a, a:hover{
  text-decoration: none;
  color: #ffffff;
}

ul{
 color: #ffffff;
 font-size: 16px;
}

.sidenav {
  height: 100%;
  width: 210px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 18px;
  color: #ffffe6;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  font-size: 15px; /* Increased text to enable scrolling */
  padding: 0px 40px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 15px;}
}
</style>

</head>

<body>

<div class="sidenav">
  <a href="#">HOME</a>
  <br>
  <a href="stud/viewstudents.jsp">Student List</a>
  <a href="teac/viewteachers.jsp">Teacher List</a>
  <a href="classroom/viewclassroom.jsp">Classroom List</a>
  <a href="subj/viewsubjects.jsp">Subject List</a>
  
  	<br>
  	<a href="classes/assignclasses.jsp">Assign Classes</a>
  	<a href="classes/assignteachers.jsp">Assign Teachers</a>
  	
  	<br>
  	<a href="classes/viewclasses.jsp">List of Classes</a>
  	
<!--    <a href="classes/viewclasses.jsp">Assign Classes</a>
  <a href="classes/viewclasses.jsp">Assign Teachers</a> -->
  <br>
  <a href="cr/classreportindex.jsp">View Class Report</a>
  <br>
  <a href="../logout">LOGOUT</a>
</div>

  <div class="main">
  <h2>Learner's Academy</h2>
  <p>Welcome to the Online Management System</p> 
  	<p><strong>Capabilities:</strong></p>
  	<ol>
  	<li>Add new student and manage the list of students</li> 
  	<li>Add new teacher and manage the list of teachers</li>
  	<li>Add new classroom and manage the list of classrooms</li>
  	<li>Add new subject and manage the list of subjects</li>
  	<li>Add new class for a subject</li>
	<li>Assign a teacher to a class for the subject </li>
	<li>View the class report (student details, class level, teacher details, subject etc.)</li>
	</ol>
  
  </div>

   
</body>
</html>