<%-- 
    Document   : login
    Created on : 26 Apr, 2019, 1:30:09 AM
    Author     : Prat1k
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Login Form</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;background-image: url("bg3.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 20%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

</head>
<body>



    <form action="logincheck.jsp" method="post">
     <div class="container">
      <div class="jumbotron">
          <h2>Login Form</h2>
  <div class="imgcontainer">
    <img src="pic.png" alt="Avatar" class="avatar">
  </div>

 
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="myInput" required>
     <label>
      <input type="checkbox" name="remember" onclick="myFunction()"> Show Password
    </label>   
    <button type="submit">Login</button>
    
  </div>

  <div class="container" style="background-color:#f1f1f1">
      <a href="index.html"><button type="button" class="cancelbtn">Cancel</button></a>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
     </div>
  

</form>
    <script>
        function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
    </script>
</body>
</html>

