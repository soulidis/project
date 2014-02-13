
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 



<html>
<body>    
<% 
    
request.setCharacterEncoding("UTF-8");   
    
String u=request.getParameter("uname"); 
String p=request.getParameter("pass"); 
String fn=request.getParameter("fname");
String ph=request.getParameter("phone"); 
String em=request.getParameter("email"); 
int notunique = 0;  

        
            

            Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bikes?useUnicode=true&characterEncoding=UTF-8","root", "****");
            Statement st=connection.createStatement(); 
            
            session.setAttribute("num",ph);
            
             ResultSet rs=st.executeQuery("select * from users where username='"+u+"'");
            while(rs.next()){
                notunique++;
            }
                
            if(notunique>0){
                out.println("<font color=blue>Error: Username already exists</font>");%>
           <a href="${pageContext.request.contextPath}/regform.jsp">Go to Registration</a>  <%
            }else{    
            
            int i = st.executeUpdate("insert into users(username,password,fullname,phone,email) values('" + u + "','" + p + "','" + fn + "','" + ph + "','" + em + "')");
            if(i>0){
                    response.sendRedirect("index.jsp");
            }

            }
            



%>

</body>


</html>