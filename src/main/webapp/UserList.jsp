<%-- 
    Document   : UserList
    Created on : Dec 3, 2024, 7:09:32 AM
    Author     : helmy
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" language

="java" %>
<%--<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  ketika ini di munculkan akan terjadi error --%>

<html>
<head>
    <title>User List</title>
</head>
<body>
    <h2>User List</h2>

     <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Full Name</th>
                <th>Actions</th>
            </tr>
        
        <%
            String dbURL = "jdbc:mariadb://localhost:3306/jdbc_latihan";
            String dbUser = "root";
            String dbPassword = "";

            try {
                Class.forName("org.mariadb.jdbc.Driver");
                Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users");

                while (resultSet.next()) {
        %>
        <tbody>
                <tr>
                    <td><%= resultSet.getInt("id") %></td>
                    <td><%= resultSet.getString("username") %></td>
                    <td><%= resultSet.getString("full_name") %></td>

                    <td>
                        <a href="editUser?id=<%= resultSet.getInt("id") %>">Edit</a> |
                        <a href="deleteUser?id=<%= resultSet.getInt("id") %>">Delete</a>
                    </td>
                </tr>
            
        </tbody>
    
    <%
                }
                connection.close();
            } catch (Exception e) {
                out.println("<tr><td colspan='3'>Error: " + e.getMessage() + "</td></tr>");
            }
     %>
     </thead>
     </table>

    <a href="addUser.jsp">Tambah User Baru</a>
</body>
</html>
