<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise3_2024_2025_8220035.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>About</title>
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
          <li><a href="index_ex3_8220035.jsp">Home</a></li>
          <li class="active"><a href="about_ex3_8220035.jsp">About</a></li>
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
          <h1>Group Members</h1>
    </div>

    <div class="media">
        <div class="media-left">
          <img class="media-object" src="/ismgroup19/images/images_assignment/member1.png" alt="Avatar" style="width:64px;">
        </div>
        <div class="media-body">
          <h4 class="media-heading">Σταύρος Βλάχος <small>8220019</small></h4>
          <p><i class="glyphicon glyphicon-envelope"></i> t8220019@aueb.gr</p>
        </div>
      </div>

    <div class="media">
        <div class="media-left">
          <img class="media-object" src="/ismgroup19/images/images_assignment/member1.png" alt="Avatar" style="width:64px;">
        </div>
        <div class="media-body">
          <h4 class="media-heading">Σπήλιος Δημακόπουλος <small>8220035</small></h4>
          <p><i class="glyphicon glyphicon-envelope"></i> t8220035@aueb.gr</p>
        </div>
      </div>

      <div class="media">
        <div class="media-left">
          <img class="media-object" src="/ismgroup19/images/images_assignment/member1.png" alt="Avatar" style="width:64px;">
        </div>
        <div class="media-body">
          <h4 class="media-heading">Αθανάσιος-Παναγιώτης Σακκάτος <small>8220132</small></h4>
          <p><i class="glyphicon glyphicon-envelope"></i> t8220132@aueb.gr</p>
        </div>
      </div>

      <div class="media">
        <div class="media-left">
          <img class="media-object" src="/ismgroup19/images/images_assignment/member1.png" alt="Avatar" style="width:64px;">
        </div>
        <div class="media-body">
          <h4 class="media-heading">Παύλος Σταμάτης <small>8220141</small></h4>
          <p><i class="glyphicon glyphicon-envelope"></i> t8220141@aueb.gr</p>
        </div>
      </div>
      </div>
   <footer class="navbar-inverse">
    <div class="container">
          <p class="text-center">&copy; Copyright 2024 by ismgroup19</p>
    </div>
   </footer>
      <script src="/ismgroup19/js/js_assignment/jquery.min.js"></script>
      <script src="/ismgroup19/js/js_assignment/bootstrap.min.js"></script>
</body>
</html>