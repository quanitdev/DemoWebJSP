<%-- 
    Document   : xuly-login
    Created on : Sep 20, 2024, 9:17:19 AM
    Author     : ADMIN
--%>

<%@page import="quan.dev.data.model.User"%>
<%@page import="quan.dev.data.dao.UserDao"%>
<%@page import="quan.dev.data.dao.Database"%>
<%@page import="quan.dev.data.dao.DatabaseDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% DatabaseDao.init(new Database());
       UserDao userDao = DatabaseDao.getInstance().getUserDao();
        User user = userDao.find(1); %>
        <% String email = request.getParameter("email"); %>
        <% String password = request.getParameter("password"); %>
        <h1> <%= email %> </h1>
        
        <% if(user != null){ %>
        <h1>Đăng nhập thành công!</h1> 
        <% } else {%>
        <h1>Đăng nhập thất bại!</h1> 
        <% } %>
    </body>
</html>
