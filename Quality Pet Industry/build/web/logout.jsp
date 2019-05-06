<%-- 
    Document   : logout
    Created on : 28 Apr, 2019, 3:21:15 AM
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
       
        <%session.setAttribute("user", null);
            request.getSession(false).invalidate();
        response.sendRedirect("index.html");
        %>
    </body>
</html>
