<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8220035.jsp"%>
<%@ page import="exercise3_2024_2025_8220035.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    UserDAO userDao = new UserDAO();

    try {
        User user = userDao.authenticate(username, password);
        session.setAttribute("userObj2024", user);
        response.sendRedirect("dashboard_ex3_8220035.jsp");
    } catch (Exception e) {
        request.setAttribute("message", "Wrong username or password");
        %>
        <jsp:forward page="login_ex3_8220035.jsp" />
        <% 
    }
%>
