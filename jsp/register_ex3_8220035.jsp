<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8220035.jsp"%>
<%@ page import="exercise3_2024_2025_8220035.*" %>

<%
    User user = (User) session.getAttribute("userObj2024");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <%@ include file="header_ex3_8220035.jsp" %>		

  <title>Register Student</title>

</head>
<body>

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">8220035</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
       				<li><a href="index_ex3_8220035.jsp">Home</a></li>				
						<li><a href="about_ex3_8220035.jsp">About</a></li>
						<% if (user != null) {%> 
						<li><a href="dashboard_ex3_8220035.jsp">Dashboard</a></li>
						<% } %> 
					</ul>		
					<ul class="nav navbar-nav navbar-right">
					<% if (user == null) {%>
						<li class="active"><a href="register_ex3_8220035.jsp">Register</a></li>
						<li><a href="login_ex3_8220035.jsp">Sign in</a></li>
					<% } else {%>	
						 <li>
							<p class="navbar-text">Signed in as <%=((User)session.getAttribute("userObj2024")).getUsername()%></p>
						</li>
						<li>
							<a href="logout_ex3_8220035.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        
					<% } %>
					</ul>
				</div>
    </div>
  </nav>

  <div class="container theme-showcase" role="main">
    <div class="jumbotron">
      <h1>3η Ατομική Άσκηση</h1>
    </div>

    <div class="page-header">
        <h1>Register Form</h1>
    </div>

      <div class="alert alert-warning text-center">
        <strong>Please fill in the following form to create an account.</strong>
      </div>

      <form class="form-horizontal" method="post" action="registerController_ex3_8220035.jsp">
        <div class="form-group">
            <label for="inputName" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
              <input type="name" name="name" class="form-control" id="name" placeholder="your name">
            </div>
        </div>
        <div class="form-group">
            <label for="inputSurname" class="col-sm-2 control-label">Surname</label>
            <div class="col-sm-10">
              <input type="surname" name="surname" class="form-control" id="surname" placeholder="your surname">
            </div>
          </div>
        <div class="form-group">
          <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
          <div class="col-sm-10">
            <input type="email" name="email" class="form-control" id="email" placeholder="your email">
          </div>
        </div>
        <div class="form-group">
          <label for="inputUsername3" class="col-sm-2 control-label">Username</label>
          <div class="col-sm-10">
            <input type="username" name="username" class="form-control" id="username" placeholder="your username">
          </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
              <input type="password" name="password" class="form-control" id="password" placeholder="your password">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Confirm</label>
            <div class="col-sm-10">
              <input type="password" name="confirm" class="form-control" id="confirm" placeholder="confirm your password">
            </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
              <label style="color:blue">
                <input type="checkbox" name="check"> I agree to the terms and conditions
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-ok"></span>Submit</button>
        <button type="reset" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-remove"></span>Cancel</button>
          </div>
        </div>
    </form>
  </div>

  	<%@ include file="footer_ex3_8220035.jsp" %>

</body>
</html>
