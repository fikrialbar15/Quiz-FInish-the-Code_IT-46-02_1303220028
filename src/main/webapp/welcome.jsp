<%-- 
    Document   : welcome
    Created on : 26 Nov 2024, 11.03.33
    Author     : helmy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  ketika ini di munculkan akan terjadi error --%>

<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <h2>Selamat datang, ${user.username}! anda berhasil Login!</h2>  <!-- Menampilkan nama pengguna yang login -->
    
    <!-- Tombol untuk logout -->
    <form action="logout" method="get">
        <button type="submit"><a href="UserList"> User List</a></button>
        <button type="submit">Logout</button>
    </form>
</body>
</html>

