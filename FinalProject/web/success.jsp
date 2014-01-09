
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="loginform.jsp">Please Login</a>
<%} else {
         response.sendRedirect("welcome.jsp");
    }
%>