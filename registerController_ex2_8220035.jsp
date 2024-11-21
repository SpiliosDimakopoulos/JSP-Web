<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Register Student</title>

  <%@ include file="header_ex2_8220035.jsp" %>

</head>
<body>

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">8220141</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li><a href="index_ex2_8220035.jsp">Home</a></li>
          <li class="active"><a href="register_ex2_8220035.jsp">Register</a></li>
          <li><a href="about_ex2_8220035.jsp">About</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container" role="main">
    <div class="jumbotron">
      <h1>1η Ατομική Άσκηση</h1>
    </div>
    <% 
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");
        String agree = request.getParameter("check");

    ArrayList<String> errors = new ArrayList<String>();

    if (name == null || name.length() < 3) {
        errors.add("Name must be at least 3 characters long");
    }
    if (surname == null || surname.length() < 3) {
        errors.add("Surname must be at least 3 characters long");
    }
    if (username == null || username.length() < 5) {
        errors.add("Username must be at least 5 characters long");
    }
    if (password == null || password.length() < 6) {
        errors.add("Password must be at least 6 characters long");
    }
    if (confirm == null || !confirm.equals(password)) {
        errors.add("Password and confirm do not match.");
    }
    if (agree == null) {
        errors.add("You must agree to terms and conditions.");
    }
    if (errors.isEmpty()) {
%>
    <div class="container">
    <div class="page-header">
        <h1>Registration almost done!</h1>
    </div>
        <div class="alert alert-success"><b>Note</b>: A verification link has been sent to the email: <%= email %></div>
        <ul class="list-unstyled">
            <li><b>Name</b>: <%= name %></li>
            <li><b>Surname</b>: <%= surname %></li>
            <li><b>Username</b>: <%= username %></li>
            <li><b>Email</b>: <%= email %></li>
        </ul>
    </div>
<%
    } else {
%>
<div class="page-header">
  <h1>Registration form has errors</h1>
</div>  
    <div class="alert alert-danger">    
        <ol>
        <%
            for (String error : errors) {
                out.println("<li>" + error + "</li>");
            }
        %>
        </ol>
     </div>    
    <a href="register_ex2_8220035.jsp" class="btn btn-info">
  <i class="glyphicon glyphicon-chevron-left	"></i> Back to the form</a>
<%
    }
%>
  </div>

	<%@ include file="footer_ex2_8220035.jsp" %>

</body>
</html>