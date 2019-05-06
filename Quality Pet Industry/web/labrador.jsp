<%-- 
    Document   : labrador
    Created on : 28 Apr, 2019, 8:45:56 PM
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
        <title>Labrador</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
                    String userId = (String)session.getAttribute("user");
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
                    try {
                            connection = DriverManager.getConnection(connectionUrl, userid, password);
                            statement = connection.createStatement();
                            String sql = "select * from users where username='"+userId+"'";
                            resultSet = statement.executeQuery(sql);
                            if(resultSet.next())
                            {
                                int i=resultSet.getInt("labrador");
                                i++;
                                String j=Integer.toString(i);
                                String sql1 = "update users set labrador='"+i+"' where username='"+userId+"'";
                                int x = statement.executeUpdate(sql1);
                                if (x > 0)
                                {
                                    out.println("Congratulations!!"); 
                                    out.println("You have adopted a new pet");
                                }
                                else            
                                    out.println("ERROR OCCURED :(");
                            }
                            
                            connection.close();
                        } catch (Exception e) {
                            out.print(e);
                        }
                %><br><br><br>
                <a href="success.jsp"><button type="button" class="btn btn-primary">GO Back</button></a>
    </body>
</html>
