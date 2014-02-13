/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Angelos
 */
public class login extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
     HttpSession session=request.getSession(true);
         String userid        = request.getParameter("uname");
         String pass        = request.getParameter("pass");
         
         Connection connection = null; 
         Statement st = null;



        try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                } catch (Exception e) {
                    System.out.println("driver failed registation");
                        System.out.println(e.getMessage());
                        System.exit(1);
                }
        
        try {
                        String connectionURL = "jdbc:mysql://localhost:3306/bikes?useUnicode=true&characterEncoding=UTF-8";
                
                        connection = DriverManager.getConnection(connectionURL, "root", "****");      
                
                        st = connection.createStatement();
                        
                        ResultSet rs = st.executeQuery("select * from users where username='" + userid + "' and password='" + pass + "'");
                        if (rs.next()){
                                session.setAttribute("userid", userid);
                                response.sendRedirect("success.jsp");
                        }
                        else {
                                response.sendRedirect("fail.jsp");
                        }
                        rs.close();
                        st.close();
                        
                } catch (SQLException sqle) {
                        System.out.println("Database failed");
                        System.out.println("because " + sqle.getMessage());
                } 
        
        
        
   }
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
    
}

    