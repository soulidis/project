<%-- 
    Document   : logout
    Created on : Jan 9, 2014, 2:30:11 PM
    Author     : Angelos
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>