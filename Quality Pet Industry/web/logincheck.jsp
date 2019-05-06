<%-- 
    Document   : logincheck
    Created on : 27 Apr, 2019, 3:47:23 PM
    Author     : Prat1k
--%>

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
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("psw");
    if(userid.equals("admin") && pwd.equals("admin123")){
        session.setAttribute("user", userid);
           response.sendRedirect("adminPanel.jsp");
        

    }
    else{
     Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pet",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username='" + userid + "' and pass='" + pwd + "'");    
    if (rs.next()) {
        session.setAttribute("user", userid);
        //out.println(session.getAttribute("userid"));
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }}
%>

    </body>
</html>
