<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8220035.jsp"%>

<%
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
	<head>
	
	<!-- automatically will redirect to index_ex2_8220035.jsp after 2 seconds -->
	<meta http-equiv="refresh" content="2;url=index_ex2_8220035.jsp" />
		
	<meta name="description" content="2η Ατομική Άσκηση - log out page">
	<meta name="author" content="your email">
	<link rel="icon" href="<%=request.getContextPath() %>/images/favicon.ico">
	
	<title>2η Ατομική Άσκηση - logout</title>
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<%@ include file="header_ex2_8220035.jsp" %>
	
	</head>
<body>	

	<div class="container theme-showcase" role="main">

		<div class="alert alert-success text-center" role="alert">Η έξοδος πραγματοποιηθηκε με επιτυχία</div>		

	</div>
		<%@ include file="footer_ex2_8220035.jsp" %>	
</body>
</html>
