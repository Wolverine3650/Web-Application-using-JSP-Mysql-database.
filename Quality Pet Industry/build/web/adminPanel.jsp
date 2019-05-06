<%-- 
    Document   : adminPanel
    Created on : 28 Apr, 2019, 4:45:13 PM
    Author     : Prat1k
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            body {
  background-image: url("bg3.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
}
        </style>
    </head>
    <body>
        <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="">Quality Pet Industry</a>
    </div>
    <!--<ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Gallery</a></li>
      <li><a href="#">About us</a></li>
    </ul>-->
      <p class="navbar-text">Welcome back Admin!</p>
      <a href="logout.jsp" style="float:right;text-decoration:none"><button type="button" class="btn btn-primary navbar-btn">Logout</button></a>
  </div>
        </nav>
        
            <div id="submitted">  <br>  <br>
                <div class="container">
                    <div class="jumbotron">
                <%
   String userId = (String)session.getAttribute("user");
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("user")==null)
      response.sendRedirect("login.jsp");

  %>
                <%
                    String id = request.getParameter("user");
                    String driver = "com.mysql.jdbc.Driver";
                    String connectionUrl = "jdbc:mysql://localhost:3306/pet";

                    String userid = "root";
                    String password = "";
                    try {
                        Class.forName(driver);
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    }
                    Connection connection = null;
                    Statement statement = null;
                    ResultSet resultSet = null;
                %>
                <table class="table">
                    <thead>
                    <h2>All Pet Enthusiasts</h2>
                    <tr>
                        <th scope="col">Sr. No</th>
                        <th scope="col">Username</th>
                        <th scope="col">Email</th>
                        <th scope="col">Labradors</th>
                        <th scope="col">Huskies</th>
                        <th scope="col">Cocker Spaniels</th>
                        <!--th scope="col">Approve</th-->


                    </tr>
                    </thead>
                    <%
                        try {
                            connection = DriverManager.getConnection(connectionUrl, userid, password);
                            statement = connection.createStatement();
                            String sql = "select * from users";
                            resultSet = statement.executeQuery(sql);
                            int i = 1;
                            while (resultSet.next()) {
                    %>
                    <tbody>
                        <tr>
                                <th scope="row"><% out.print(i);
                                    i++;%></th>
                            <td><%=resultSet.getString("username")%></td>
                            <td><%=resultSet.getString("email")%></td>
                            <td><%=resultSet.getInt("labrador")%></td>
                            <td><%=resultSet.getInt("husky")%></td>
                            <td><%=resultSet.getInt("spaniel")%></td>
                        </tr>
                    </tbody>
                    <%
                            }
                            connection.close();
                        } catch (Exception e) {
                            out.print(e);
                        }
                    %>

                </table>

            </div>
                </div>
            </div>
                        

    </body>
</html>
