<%-- 
    Document   : login
    Created on : Dec 19, 2013, 1:16:57 PM
    Author     : Angelos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/main.css">
        <title>JSP Example</title>
    </head>
    <body>
        <form method="post" action="login">
            <center>
            <table bgcolor="#996633" border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
