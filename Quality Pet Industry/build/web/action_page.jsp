<%-- 
    Document   : action_page
    Created on : 27 Apr, 2019, 3:15:12 PM
    Author     : Prat1k
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%@ page import ="java.sql.*" %>
        <%

            String pwd = request.getParameter("psw");
            String un=request.getParameter("uname");
            String email = request.getParameter("email");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pet",
                    "root", "");
            Statement st = con.createStatement();
            //ResultSet rs;
            int i = st.executeUpdate("INSERT INTO `users`( `email`, `pass`,`username`) VALUES ('"+email+"','"+pwd+"','"+un+"')");
            if (i > 0) {
        //        session.setAttribute("userid", user);
                response.sendRedirect("login.jsp");
                // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
            } else {
                response.sendRedirect("signup.jsp");
            }

        %>

    </body>
</html>
