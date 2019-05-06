<%-- 
    Document   : success
    Created on : 27 Apr, 2019, 9:04:35 PM
    Author     : Prat1k
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <style>
      body {
  background-image: url("bg3.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
}
.thumbnail {
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5);
   transition: 0.3s;
   min-width: 40%;
   border-radius: 5px;
 }

 .thumbnail-description {
   min-height: 40px;
 }

 .thumbnail:hover {
   cursor: pointer;
   box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 1);
 }
  </style>
    </head>
    <body>
        <%
   String userId = (String)session.getAttribute("user");
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("user")==null)
      response.sendRedirect("login.jsp");

  %>
       <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">Hello <%=userId%>!</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="success.jsp">Adoption</a></li>
      <li><a href="#">Kennel</a></li>
      <li><a href="#">Profile</a></li>
    </ul>
    <a href="logout.jsp" style="float:right;text-decoration:none"><button type="button" class="btn btn-primary navbar-btn">Logout</button></a>
  </div>
        </nav>
   <div class="row">
  <div class="col-md-2">&nbsp;</div>
  <div class="col-md-8">
    <div class="row space-16">&nbsp;</div>
    <div class="row">
      <div class="col-sm-12">
        <div class="thumbnail">
          <div class="caption text-center" onclick="location.href='#'">
            <div class="position-relative">
              <img src="1.jpg" style="width:540px;height:400px;" />
            </div>
            <h3 id="thumbnail-label">Labrador</h3>
            <div class="thumbnail-description smaller"> </div>
          </div>
          <div class="caption card-footer text-center">
              <ul class="list-inline">
                  <li>for 6000/-</li>
                  <li></li>
                  <li><a href="labrador.jsp"><button type="button" class="btn btn-primary">ADOPT</button></a></li>
              </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-2">&nbsp;</div>
  </div>    
</div>
    
    <div class="row">
  <div class="col-md-2">&nbsp;</div>
  <div class="col-md-8">
    <div class="row space-16">&nbsp;</div>
    <div class="row">
      <div class="col-sm-12">
        <div class="thumbnail">
          <div class="caption text-center" onclick="location.href='#'">
            <div class="position-relative">
              <img src="2.jpg" style="width:540px;height:400px;" />
            </div>
            <h3 id="thumbnail-label">Husky</h3>
            <div class="thumbnail-description smaller"> </div>
          </div>
          <div class="caption card-footer text-center">
              <ul class="list-inline">
                  <li>for 15000/-</li>
                  <li></li>
                  <li><a href="husky.jsp"><button type="button" class="btn btn-primary">ADOPT</button></a></li>
              </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-2">&nbsp;</div>
  </div>    
</div>
    
    <div class="row">
  <div class="col-md-2">&nbsp;</div>
  <div class="col-md-8">
    <div class="row space-16">&nbsp;</div>
    <div class="row">
      <div class="col-sm-12">
        <div class="thumbnail">
          <div class="caption text-center" onclick="location.href='#'">
            <div class="position-relative">
              <img src="3.jpg" style="width:540px;height:400px;" />
            </div>
            <h3 id="thumbnail-label">Cocker Spaniel</h3>
            <div class="thumbnail-description smaller"> </div>
          </div>
          <div class="caption card-footer text-center">
              <ul class="list-inline">
                  <li>for 9000/-</li>
                  <li></li>
                  <li><a href="spaniel.jsp"><button type="button" class="btn btn-primary">ADOPT</button></a></li>
              </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-2">&nbsp;</div>
  </div>    
</div>
    
    </body>
</html>
