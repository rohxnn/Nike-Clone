<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Order</title>
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
                    <li class="nav-item">
                        <a class="nav-link" href="AdminDash">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#view-customer">View Customers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewProduct">View Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ImageManage">Image Management</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="vieworder">View Orders</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="logout">Log Out</a>
                  </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <div id="view-customer" class="section">
            <div class="container">
                <h1 class="display-4">CUSTOMER ORDER DETAILS</h1>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <input type="text" class="form-control" id="customerId" placeholder="Enter Customer ID">
                    </div>
                    <div class="col-md-3">
                        <button class="btn btn-primary" id="searchButton">Search</button>
                    </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th></th>
                             <th>Customer id</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Size</th>
                            <th>Quantity</th>
                            <th>Address</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                 
                    <tbody>
                           <c:forEach items="${order}" var="orderl">
                            <tr>
                                <td>
                                    <img src="../../static/allimage/${orderl.p.image }" alt="Product Image" class="img-fluid" width="100">
                                </td>
                                <td class="find">${orderl.c.id}</td>
                                <td>${orderl.p.name}</td>
                                <td>${orderl.p.price }</td>
                                <td>
                                    <input type="text" name="size" value="${orderl.size }" class="form-control" style="width: 35px;">
                                </td>
                                <td>
                                    <input type="number" class="form-control" name="quantity" value="${orderl.quantity}">
                                </td>
                                <td>${orderl.address}</td>
                                <td>${orderl.date}</td>
                                <td>${orderl.status}</td>
                                <td><a href="UpdStatus/${orderl.id }"><button class="btn btn-danger">Update</button></a></td>
                                
                            </tr>
                       
                    </tbody>
                     </c:forEach>
                </table>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS and any additional scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
   <script>
    // Example: Add JavaScript code here to handle the search functionality
    document.getElementById("searchButton").addEventListener("click", function() {
        // Get the customer ID entered by the user
        var customerId = document.getElementById("customerId").value;
        var customerRows = document.querySelectorAll(".find"); // Use querySelectorAll to select elements with class "find"
        
        for (var i = 0; i < customerRows.length; i++) {
            var customerIdCell = customerRows[i]; // The customer ID is directly in the cell
            var customerIdValue = customerIdCell.textContent.trim();

            if (customerIdValue === customerId) {
                customerRows[i].parentNode.style.display = ""; // Show the matching row by displaying its parent element
            } else {
                customerRows[i].parentNode.style.display = "none"; // Hide non-matching rows by hiding their parent elements
            }
        }
    });
</script>

</body>
</html>
    