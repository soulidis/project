<%-- 
    Document   : entrytodb
    Created on : Jan 9, 2014, 4:24:12 PM
    Author     : Angelos
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <h1>Connection status</h1>
<% 
   
request.setCharacterEncoding("UTF-8");      
    
String bt=request.getParameter("btype"); 
String uc=request.getParameter("ucity"); 
String at=request.getParameter("atime"); 
String bp=request.getParameter("bphoto");
String u=session.getAttribute("userid").toString();


   
   
            Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikes?useUnicode=true&characterEncoding=UTF-8","root", "****");
          
            Statement st=connection.createStatement(); 
           
            Integer number = (Integer) session.getAttribute("phone1");

            
            
            
            
           int i = st.executeUpdate("insert into entries(owner,biketype,city,phone,availableTime,photo) values('" + u + "','" + bt + "','" + uc + "','" + number + "','" + at + "','" + bp + "')");
            
           if(i>0){
                    response.sendRedirect("welcome.jsp");
            }






%>
    </body>
</html>
