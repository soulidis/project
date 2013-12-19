
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 



<html>
<body>    
<h1>Connection status</h1>
<% 
    
String u=request.getParameter("uname"); 
String p=request.getParameter("pass"); 
String fn=request.getParameter("fname"); 
String ln=request.getParameter("lname"); 
String ph=request.getParameter("phone"); 
String em=request.getParameter("email"); 
    

        
            Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikes","root", "mysqlaok");
            if(!connection.isClosed())
                 out.println("Successfully connected to " + "MySQL server using TCP/IP...");
            Statement st=connection.createStatement(); 
            int i = st.executeUpdate("insert into users(username,password,firstname,lastname,phone,email) values('" + u + "','" + p + "','" + fn + "','" + ln + "','" + ph + "','" + em + "')");
            if(i>0){
                    response.sendRedirect("index.jsp");
            }






%>

</body>


</html>