<%-- 
    Document   : editUser
    Created on : Dec 3, 2024, 7:10:29 AM
    Author     : helmy
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<html>
<head>
    <title>Edit User</title>
</head>
<body>
    <h2>Edit User</h2>

    <form action="editUser" method="post">
        <% 
            String dbURL = "jdbc:mariadb://localhost:3306/jdbc_latihan";
            String dbUser = "root";
            String dbPassword = "";
            int userId = Integer.parseInt(request.getParameter("id")); // Get the user id from the URL

            try {
                Class.forName("org.mariadb.jdbc.Driver");
                Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE id=" + userId);
                
                if (resultSet.next()) {
                    String username = resultSet.getString("username");
                    String password = resultSet.getString("password");
                    String fullName = resultSet.getString("full_name");
        %>
        
        <input type="hidden" name="id" value="<%= userId %>">
        
        <label for="username">Username:</label>
        <input type="text" name="username" value="<%= username %>" required><br><br>

        <label for="password">Password:</label>
        <input type="password" name="password" value="<%= password %>" required><br><br>

        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" value="<%= fullName %>" required><br><br>

        <button type="submit">Update User</button>
        <% 
                }
                connection.close();
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        %>
    </form>
</body>
</html>