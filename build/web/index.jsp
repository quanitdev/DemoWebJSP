<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="quan.dev.data.model.Category" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bảng Cửu Chương Từ 1 Đến 9</title>
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
            }
            td, th {
                border: 1px solid black;
                padding: 8px;
                text-align: center;
            }
            th {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>
        <%-- int a = Integer.parseInt(request.getAttribute("a").toString()); --%> 
        <!-- <h1>a = <%-- a --%></h1>-->
        
        <% List<Category> categoryList = (List<Category>) request.getAttribute("categoryList"); %>
        <h1><%= categoryList %></h1>
        <% for(int i=0; i < categoryList.size(); i++){ 
            Category category = categoryList.get(i); %>
            <h1> <%= category.getName() %></h1>
        <% } %>
    </body>
</html>