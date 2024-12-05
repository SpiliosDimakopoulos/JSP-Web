<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8220035.jsp"%>
<%@ page import="exercise3_2024_2025_8220035.*,java.util.List" %>

<%  User user = (User) session.getAttribute("userObj2024");
	if (user == null ) {
	request.setAttribute("message", "You are not authorized to access this resource.Please login.");
%>
	<jsp:forward page="login_ex3_8220035.jsp" />
<%	
	}

%>

<!DOCTYPE html>
<html lang="en">
	<head>        
		<%@ include file="header_ex3_8220035.jsp" %>
		<meta name="description" content="3η Ατομική Άσκηση - Profile">
		<meta name="author" content="your email">
		<title>3η εργαστηριακή άσκηση - Profile</title>

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
						<li><a href="index_ex3_8220035.jsp">Home</a></li>										
						<li><a href="about_ex3_8220035.jsp">About</a></li>				
						<li><a href="dashboard_ex3_8220035.jsp">Dashboard</a></li>
										
					</ul>
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=user.getUsername()%> </p>
						</li>
						<li>
							<a href="logout_ex3_8220035.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        	
			        </ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<div class="jumbotron">
				<h1>3η Ατομική Άσκηση</h1>
			</div>

<%
            String uname = request.getParameter("uname");
            UserDAO uDAO = new UserDAO();

            User u = uDAO.findUser(uname);
            if (u != null) {
%>   
                <div class="page-header">
			<h1>Profile of: <code><%=u.getFirstname() %> <%=u.getLastname() %></code></h1>
		</div>

                <ul class="list-unstyled">
                    <li><strong>First Name: </strong><%=u.getFirstname() %></li>
                    <li><strong>Last Name: </strong><%=u.getLastname() %></li>
                    <li><strong>Email: </strong><%=u.getEmail() %></li>
                    <li><strong>Username: </strong><%=u.getUsername() %></li>
                 </ul>
<%
            } else {
%>
                <div class="alert alert-danger" style="text-align:center;">
                    <strong>User not found!</strong>
                </div>
<%
            }
	
%>
        </div>
        
    <%@ include file="footer_ex3_8220035.jsp" %>

	</body>
</html>