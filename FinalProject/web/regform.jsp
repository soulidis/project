<%-- 
    Document   : regform
    Created on : Dec 19, 2013, 12:54:06 PM
    Author     : Angelos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/main.css">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="regtodb.jsp">
            <center>
            <table bgcolor="#996633" border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Register Form</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Full Name</td>
                        <td><input type="text" name="fname" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td><input type="text" name="phone" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>