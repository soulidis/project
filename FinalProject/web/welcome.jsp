<%-- 
    Document   : welcome
    Created on : Jan 9, 2014, 3:50:28 PM
    Author     : Angelos
--%>




<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    
    
  
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/main.css">
        <title>Welcome</title>
    </head>
    
    
 
    
   
    <script>

function setCookie(cname,cvalue,exdays)
{
var d = new Date();
d.setTime(d.getTime()+(exdays*24*60*60*1000));
var expires = "expires="+d.toGMTString();
document.cookie = cname+"="+cvalue+"; "+expires;
}

function getCookie(cname)
{
var name = cname + "=";
var ca = document.cookie.split(';');
for(var i=0; i<ca.length; i++) 
  {
  var c = ca[i].trim();
  if (c.indexOf(name)==0) return c.substring(name.length,c.length);
  }
return "";
}

function checkCookie()
{
var user=getCookie("username");
if (user!="")
  {
  alert("Welcome again " + user);
  }
else 
  {
  user = prompt("Please enter your name:","");
  if (user!="" && user!=null)
    {
    setCookie("username",user,30);
    }
  }
}

</script>

<body onload="checkCookie()"></body>
    
    
    
    
    
    
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="loginform.jsp">Please Login</a>
<%} else {
%>
    
    
    
    
    Welcome <%=session.getAttribute("userid")%>
    <a href='logout.jsp'>Log out</a><br><br><br><br>
    <a href="newEntry.jsp">Upload your bike</a><br><br><br><br>
    <a href="search.jsp">Search a bike</a><br><br><br><br>
     <a href="profile.jsp">See your profile</a><br><br><br><br>
    
    <% 
    
    ResultSet rs=null;
    Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikes","root", "mysqlaok");
            
            Statement st=connection.createStatement(); 
            
            
            
            String username=session.getAttribute("userid").toString();
            String qs = "SELECT * from users WHERE username='"+username+"';";
            rs=st.executeQuery(qs);
            
            while(rs.next()){
                String str=rs.getString(5);
                int phone1=Integer.parseInt(str); 
                session.setAttribute("phone1",phone1);
            }
            
      %>      
    
    
</html>


<%}%>