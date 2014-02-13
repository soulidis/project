<%-- 
    Document   : searchservlet
    Created on : Jan 21, 2014, 3:15:32 PM
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
       
    </head>
    
    <%
    
    String bt = request.getParameter("btype");    
    String uc = request.getParameter("ucity");
    String at = request.getParameter("atime");
        
        
        Integer id = (Integer) session.getAttribute("id");
    
        Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikes","root", "****");
            
            Statement st=connection.createStatement(); 
           
             ResultSet rs = null;
            
           if(uc=="" && at ==""){
           String QueryString = "SELECT * from entries WHERE biketype='"+bt+"';";
           rs = st.executeQuery(QueryString);
           }else if(bt=="" && at==""){
           String QueryString = "SELECT * from entries WHERE city='"+uc+"';";
           rs = st.executeQuery(QueryString);
           }else if(bt=="" && uc==""){
           String QueryString = "SELECT * from entries WHERE availableTime='"+at+"';";
           rs = st.executeQuery(QueryString);
           }else if(uc==""){
           String QueryString = "SELECT * from entries WHERE biketype='"+bt+"' && availableTime='"+at+"';";
           rs = st.executeQuery(QueryString);
           }else if(at==""){
           String QueryString = "SELECT * from entries WHERE biketype='"+bt+"' && city='"+uc+"';";
           rs = st.executeQuery(QueryString);
           }else if(bt==""){
           String QueryString = "SELECT * from entries WHERE city='"+uc+"' && availableTime='"+at+"';";
           rs = st.executeQuery(QueryString);
           }else if(uc=="" && at=="" && bt==""){
               
                //needs code
           }else{
               String QueryString = "SELECT * from entries WHERE biketype='"+bt+"' && city='"+uc+"' && availableTime='"+at+"';";
           rs = st.executeQuery(QueryString);
           } 

           if (!rs.isBeforeFirst()){
           
               response.sendRedirect("indexwrongsearch.jsp");
               
           }
           
           
           while (rs.next()) {
           
           String q1=rs.getString(2);
           String q2=rs.getString(3);
           String q3=rs.getString(4);
           int q4=rs.getInt(5);
           String q5=rs.getString(6);
           String q6=rs.getString(7);
           
        
   %>
    
    
    <body>
        <TABLE cellpadding="10" border="10" >
        
        <tr>
            <th>OWNER</th>
            <th>BIKE TYPE</th>
            <th>CITY</th>
            <th>PHONE</th>
            <th>AVAILABLE TIME</th>
            <th>PHOTO</th>
            
        </tr>    
         
        <TR>
        <TD> <%=q1%>  </TD>
        <TD> <%=q2%>  </TD>
        <TD> <%=q3%>  </TD>
        <TD> <%=q4%>  </TD>
        <TD> <%=q5%>  </TD>
        <TD> <a href="<%=q6%>" target="_blank">See the bike?</a> </TD>    
        
        </TR>
        </TABLE>
    </body>
    
    <%  }  %>
    
    Do you want to rent one???<a href='loginform.jsp'>Login</a> or <a href='regform.jsp'>register</a> now!!!<br><br><br>Otherwise go to our <a href='index.jsp'>home page</a>
    
</html>
