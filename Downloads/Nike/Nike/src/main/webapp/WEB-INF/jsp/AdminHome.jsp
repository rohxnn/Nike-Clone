<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike Admin</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="../../static/images/pngwing.com.png" alt="" width="100px" height="100px"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="AdminDash">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewCust">View Customers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewProduct">View Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ImageManage">Image Management</a>
					</li>
                    <li class="nav-item">
                        <a class="nav-link" href="vieworder">View Orders</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="logout">Log Out</a>
                  </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <div id="dashboard" class="section">
  
	<h1>Welcome Admin</h1>
 
        </div>
        
      
    </div>

    <!-- Include Bootstrap JS and any additional scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
    