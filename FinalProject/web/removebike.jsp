<%-- 
    Document   : removebike
    Created on : Feb 13, 2014, 12:04:47 PM
    Author     : Angelos
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            String ri=request.getParameter("removedid"); 
            String u=session.getAttribute("userid").toString();
            
            Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikes","root", "****");
            
            Statement st=connection.createStatement(); 
            
            
            int i = st.executeUpdate("delete from entries where owner ='"+u+"' && id='"+ri+"'");
            
            
                
                response.sendRedirect("profile.jsp");
            
            
        
        %>
        
        
        
    
    
</html>
