<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike Ecommerce Admin</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
      

        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;

            position: absolute;
    left: 39%;
    top: 27%;

        }
        body
        {
            font-family: Arial, Helvetica, sans-serif;
        }

        .login-form {
            display: flex;
            flex-direction: column; 
        }

        .form-group {
            margin-bottom: 35px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input {
            padding: 10px;
            border: 1px solid #ccc;
          
            width: 250px;
        }

        .login-button {
            background-color: black;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

      
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/nike/in"><img src="../../static/images/pngwing.com.png" alt="" width="100px" height="100px"></a>
           
            
        </div>
    </nav>

    <div class="container mt-4">
       
        <div class="login-container">
            <h2>Hey Admin.....</h2>
            <br>
             
            <form class="login-form" action="/Admin/sublogin" method="post">
            
                <div class="form-group">
                   
                    <input type="text" id="username" name="username" placeholder="Username" required>
                </div>
                <div class="form-group">
                    <label for="password"></label>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <button class="login-button" type="submit">Login</button>
              
            </form>
            <br>
              <c:choose>
              <c:when test="${mpty!=null  }"><p style="color: red; font-family: italian">Sorry Incorrect username or password.Try Again!</c:when>
              </c:choose>
        </div>
    </div>

    <!-- Include Bootstrap JS and any additional scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
    