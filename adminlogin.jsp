<%-- 
    Document   : adminlogin
    Created on : Jun 14, 2017, 10:20:06 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body><center>
        <form action="adminmain.jsp" method="post">
            <h3>Admin Login</h3>
            <input type="text" name="username" placeholder="username" required><br><br>
            <input type="password" name="password" placeholder="password" required><br><br>
            <input type="Submit" value="Login">
        </form>
    </center>
    </body>
</html>

