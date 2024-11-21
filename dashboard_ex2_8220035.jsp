<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8220035.jsp"%>
<%@ page import="exercise2_2024_2025_8220035.*" %>
<%@ page import="java.util.List" %>

<%
    User user = (User) session.getAttribute("userObj2024");
    if (user == null) {
        request.setAttribute("message", "You are not authorized to access this resource. Please login.");
    %>
        <jsp:forward page="login_ex2_8220035.jsp" />
	<% 

        return;

    } else {
%>

<!DOCTYPE html>
<html lang="en">
	<head>        
		
		<%@ include file="header_ex2_8220035.jsp" %>		
		
		<meta name="description" content="2η Ατομική Άσκηση - Dashboard">
		<meta name="author" content="your email">
		
		<link rel="icon" href="<%=request.getContextPath() %>/images/images_assignment/favicon.ico">
		<title>2η Ατομική Άσκηση - Dashboard page</title>
			
	</head>
	
	<body>

		<!-- Fixed navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">8220035</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="index_ex2_8220035.jsp">Home</a></li>										
						<li><a href="about_ex2_8220035.jsp">About</a></li>				
						<li class="active"><a href="dashboard_ex2_8220035.jsp">Dashboard</a></li>
										
					</ul>
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=((User)session.getAttribute("userObj2024")).getUsername()%></p>
						</li>
						<li>
							<a href="logout_ex2_8220035.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        	
			        </ul>		
		
				</div>
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>2η Ατομική Άσκηση</h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Welcome <code><%= ((User) session.getAttribute("userObj2024")).getFirstname() + " " + ((User) session.getAttribute("userObj2024")).getLastname()%> </code></h1>
			</div>
			<%
                    UserDAO userDAO = new UserDAO();
                    List<User> users = userDAO.getUsers();
			%>
            <div class="row">
                <div class="col-xs-12">
                    <h2>Available Users <span class="badge"><% out.print(users.size()); %></span></h2>

				<table class="table table-bordered">
  					<thead>
					<tr class="info">
    					<th scope="col">A/A</th>
						<th scope="col">Last Name</th>
						<th scope="col">Fist Name</th>
						<th scope="col">Email</th>
					</tr>
					</thead>
					<% 
						int i = 1;
						for (User j : users) {
					%>
					<tr class="<%= j.getUsername().equals(user.getUsername()) ? "success" : "" %>">
						<td scope="row"><%= i++ %></td>
						<td><%= j.getLastname() %></td>
						<td><%= j.getFirstname() %></td>
						<td><%= j.getEmail() %></td>					
					</tr>
					 <%
                        }
                     %>
				</table>
                </div>

            </div>
			
		</div>
		<% } %>
		
		<%@ include file="footer_ex2_8220035.jsp" %>

	</body>
</html>