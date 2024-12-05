<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise3_2024_2025_8220035.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>1η Εργαστηριακή Άσκηση</title>
  <%@ include file="header_ex3_8220035.jsp" %>
</head>
<body>

  <!-- Fixed navbar -->
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">8220035</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="index_ex3_8220035.jsp">Home</a></li>
          <li><a href="about_ex3_8220035.jsp">About</a></li>
          <% 
            if (session.getAttribute("userObj2024") != null) { 
          %>
            <li><a href="dashboard_ex3_8220035.jsp">Dashboard</a></li>
          <% 
            } 
          %>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <%
            if (session.getAttribute("userObj2024") == null) {
          %>
            <li><a href="register_ex3_8220035.jsp">Register</a></li>
            <li><a href="login_ex3_8220035.jsp">Sign in</a></li>
          <% 
            } else { 
              User user = (User) session.getAttribute("userObj2024");
          %>
            <li><p class="navbar-text">Signed in as <%= user.getUsername() %></p></li>
            <li><a href="logout_ex3_8220035.jsp">Sign out</a></li>
          <% 
            } 
          %>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container theme-showcase" role="main">
    <div class="jumbotron">
      <h1>Ομάδα 19</h1>
    </div>
    <div class="page-header">
      <h1>Σπήλιος Δημακόπουλος</h1>
    </div>
  </div>

  <%@ include file="footer_ex3_8220035.jsp" %>
</body>
</html>
