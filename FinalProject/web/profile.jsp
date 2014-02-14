<%-- 
    Document   : profile
    Created on : Jan 15, 2014, 5:50:16 PM
    Author     : Angelos
--%>



<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>




<html>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
 <link rel="stylesheet" href="css/main.css">
     <title>Your Profile</title>
    
     <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="loginform.jsp">Please Login</a>
<%} else {
%>
    
    
    
    <%
        
        request.setCharacterEncoding("UTF-8");  
        
        String u=session.getAttribute("userid").toString();
        
        Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikes?useUnicode=true&characterEncoding=UTF-8","root", "****");
            
            Statement st=connection.createStatement(); 
           
            Integer number = (Integer) session.getAttribute("phone1");

           ResultSet rs = null;
        
           String QueryString = "SELECT * from entries WHERE owner='"+u+"';";
           rs = st.executeQuery(QueryString);
        
           
           if (!rs.isBeforeFirst()){
           
               response.sendRedirect("emptyprofile.jsp");
               
           }
           
           
           while (rs.next()) {
           
          
           String q0=rs.getString(1);   
           String q1=rs.getString(2);
           String q2=rs.getString(3);
           String q3=rs.getString(4);
           int q4=rs.getInt(5);
           String q5=rs.getString(6);
           String q6=rs.getString(7);
        
        
        
        %>
    
   
    <body>
        <div class="pinakas2" >
        <TABLE cellpadding="10" border="10" >
        
        <tr>
            <th>ID</th>
            <th>OWNER</th>
            <th>BIKE TYPE</th>
            <th>CITY</th>
            <th>PHONE</th>
            <th>AVAILABLE TIME</th>
            <th>PHOTO</th>
        </tr>    
            
        <TR>
        <TD> <%=q0%>  </TD>
        <TD> <%=q1%>  </TD>
        <TD> <%=q2%>  </TD>
        <TD> <%=q3%>  </TD>
        <TD> <%=q4%>  </TD>
        <TD> <%=q5%>  </TD>
        <TD> <a href="<%=q6%>" target="_blank">See the bike?</a> </TD>     
        
        </TR>
        </TABLE>
        
        
       </div>
        
        
        
    </body>
    
    <% } %>
    
    
    Do you want to remove an entry???Type the bikes id:
        <form method="post" action="removebike.jsp">
        <input type="text" name="removedid"
            value="" /> 
        <input type="submit" value="Remove"/>
        </form>   
    or go to your <a href='welcome.jsp'>home page</a>
    
</html>


<%}%>