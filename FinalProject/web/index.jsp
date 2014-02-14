<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 


    <head>
        <link rel="stylesheet" href="css/main.css">
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bike Rental</title>
        
        
        
    </head>
    <body>
        <div id='titlos'>
        <h1>Bike Rental</h1>
        </div>
        
        
        
        <a href="loginform.jsp">Login</a><br><br>
          
        <a href="regform.jsp">Register</a>
     
        
        <br><br><br><br><br><br><br><br>
        
<div class="pinakas1">
<form method="post" action="indexsearch.jsp">
            <center>
            <table bgcolor="#996633" border="1" width="30%" cellpadding="5">
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
  
</div>   
  
        
</body>
    



</html>