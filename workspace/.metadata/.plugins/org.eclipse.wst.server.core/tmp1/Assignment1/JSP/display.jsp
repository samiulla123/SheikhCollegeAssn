<%@page import="dao.DaoModel"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>JSP page Display</title>
<link href="CSS/master.css" rel="stylesheet" text="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="javascript/"></script>

</head>
<body>
	<header id="headP"><p>PES&T's, SHAIKH GROUP OF INSTITUTIONS </p>
		<h5>Shaikh Campus Nehru Nagar Belgaum - 590010 </h5></header>
	<form name="formvalidation" method="post" action="delete">	
	<section id="assgn">
	<h1 id="demo"></h1>
	<h1>Displaying Student List</h1> 
		   
      <table id="child" border ="1" width="400" align="left"> 
         <tr bgcolor="00FF7F"> 
         <th><b>ID</b></th> 
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
       <%@ page language="java" %>

            <tr> 
            <%ResultSet resultSet = null;%>
            <%resultSet=DaoModel.selectDB();%>
            <%
            try{
			while(resultSet.next()){
			%>
				<td><%=resultSet.getString("id") %></td> 
                <td><%=resultSet.getString("sname") %></td> 
                <td><%=resultSet.getString("addr") %></td> 
                <td><%=resultSet.getString("phone") %></td> 
                <td><%=resultSet.getString("assignment") %></td>
                <td><%=resultSet.getString("gender") %></td>
                <td><a href="https://belagavi.nic.in/en/"><%=resultSet.getString("city") %></a></td>

            </tr> 
            <% 
			}

			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
			<tr><td> <input type="text" name="delete" />
		<button name="submit" onclick="">Submit</button></td></tr>
        </table>  
      
	</section>
	</form>
	<footer class="fot" align="bottom">copyright : sheikhgroup</footer>
</body>
</html>