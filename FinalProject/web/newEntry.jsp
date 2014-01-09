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
        <title>Bike Entry</title>
    </head>
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
                        <td><input type="text" name="btype" value="" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="ucity" value="" /></td>
                    </tr>
                    <tr>
                        <td>Available at</td>
                        <td><input type="text" name="atime" value="" /></td>
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
