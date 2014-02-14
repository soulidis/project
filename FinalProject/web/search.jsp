<%-- 
    Document   : search
    Created on : Jan 15, 2014, 6:06:49 PM
    Author     : Angelos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/main.css">
        <title>Search a bike</title>
    </head>
    
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="loginform.jsp">Please Login</a>
<%} else {
%>
   
    
    
    
    
    <body>
        <form method="post" action="searchdb.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Search a bike</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Bike type</td>
                        <td><input type="text" name="btype" value="" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="ucity" value="" /></td>
                    </tr>
                    <tr>
                        <td>Availability </td>
                        <td><input type="text" name="atime" value="" /></td>
                    </tr>
                        <td><input type="submit" value="Search" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        
        
    </body>
</html>



<%}%>