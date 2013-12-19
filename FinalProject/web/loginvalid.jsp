<%-- 
    Document   : loginvalid
    Created on : Dec 19, 2013, 7:46:21 PM
    Author     : Angelos
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
 
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikes","root", "mysqlaok");
    Statement st = con.createStatement();
    ResultSet rs;
    
    rs = st.executeQuery("select * from users where username='" + userid + "' and password='" + pwd + "'");
   if (rs.next()) {
        session.setAttribute("user", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
