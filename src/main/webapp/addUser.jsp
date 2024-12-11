<%-- 
    Document   : addUser
    Created on : 11 Dec 2024, 20.47.27
    Author     : Lenovo
--%>

<%-- saya menambahkan ini karena agar bisa menambah data --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Pengguna</title>
    </head>
    <body>
        <h2>Tambah Pengguna</h2>
        <form action="addUser" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <label for="fullName">Nama Lengkap:</label>
            <input type="text" id="fullName" name="fullName" required><br><br>

            <button type="submit">Tambah Pengguna</button>
        </form>
    </body>
</html>
