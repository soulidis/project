<%-- 
    Document   : newEntry
    Created on : Jan 9, 2014, 4:03:34 PM
    Author     : Angelos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/main.css">
        <title>Bike Entry</title>
    </head>
    
     <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="loginform.jsp">Please Login</a>
<%} else {
%>
    
    <body>
        <form method="post" action="entrytodb.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Bike Entry</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Bike type</td>
                        <td><input type="text" name="btype" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="ucity" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Available at (HH : mm)</td>
                        <td><input type="text" name="atime" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Photo URL</td>
                        <td><input type="text" name="bphoto" value="" required=""/></td>
                    </tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        
        
    </body>
</html>



<%}%>