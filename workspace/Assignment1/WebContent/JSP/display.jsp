<%@page import="assign1.getset"%> 
<%@page import="java.util.ArrayList"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>JSP page Display</title>
<link href="CSS/master.css" rel="stylesheet" text="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="javascript/formvalidate.js"></script>

</head>
<body>
	<header id="headP"><p>PES&T's, SHAIKH GROUP OF INSTITUTIONS </p>
		<h5>Shaikh Campus Nehru Nagar Belgaum - 590010 </h5></header>
	<form name="formvalidation" method="post" action="Assign">	
	<section id="assgn">
	<h1 id="demo">Well Come to SGI</h1>
		<img src="image/index.png" width="300px" height="100px">
	<h1>Displaying Student List</h1> 
		   
      <table border ="1" width="400" align="left"> 
         <tr bgcolor="00FF7F"> 
          <th><b>Student Name</b></th> 
          <th><b>Student Address</b></th> 
          <th><b>Phone Number</b></th> 
           <th><b>Assignments</b></th> 
          <th><b>Gender</b></th> 
          <th><b>City</b></th> 
         </tr> 
        <%-- Fetching the attributes of the request object 
             which was previously set by the servlet  
              "StudentServlet.java" 
        --%>  
       <%-- <% getset s=new getset(0,0);%> --%> 
       <%@ page language="java" %>
       <%! public void val(getset s){%>
            <tr> 
                <td><%=s.getName()%></td> 
                <td><%=s.getAddr()%></td> 
                <td><%=s.getPno()%></td> 
                <% String[] assignment=s.getAssign(); %>
                <%for (String str1: assignment){%>
                	<td><%=str1 %></td>
               <%} %> 
                <% String[] gender=s.getGen(); %>
                <%for (String str1: gender)
                {%>
                	<td><%=str1 %></td>
               <% }%> 
                <td><%=s.getCity()%></td>
                 <%} %> 
            </tr> 
        </table>  
	</section>
	</form>
	<footer class="fot" align="bottom">copyright : sheikhgroup</footer>
</body>
</html>