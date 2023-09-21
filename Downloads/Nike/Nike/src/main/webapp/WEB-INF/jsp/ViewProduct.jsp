<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product View</title>
  

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    
    
    <style>
    body
    {
    font-family:  "Helvetica Neue",Helvetica,Arial,sans-serif;
    }
     .search-input {
        padding: 8px;
        border: none;
        border-radius: 20px;
        background-color: #f5f5f5; 
        border: none;
       
    }
	#a
	{
	background-color: #212529;}
  
  
   
    
    
    .image-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .image-card {
            width: calc(33.33% - 20px); /* Adjust based on your padding/margins */
            margin: 10px; /* Adjust as needed */
            /* Additional styling for the card */
        }
       .add-product-button {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #c40000;
            color: #fff;
            border: none;
            border-radius: 8px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .add-product-button:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <nav id="a" class="navbar navbar-expand-lg navbar-dark bg-dark" >
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
                        <a class="nav-link" href="viewCust">View Customers</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="ViewProduct">View Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ImageManage">Image Management</a>
					</li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewProduct">View Orders</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="logout">Log Out</a>
                  </li>
                </ul>
            </div>
           <a href="AddProduct" style="color: white;"><button class="add-product-button">Add Product</button></a> 
        </div>
    </nav>
    <div class="container mt-4">
       <button onchange="searchProducts()" style="border: none; border-radius: 25px; background-color: #f5f5f5;"> <input type="text" id="searchInput" class="search-input" placeholder="Search..."></button>

        <div id="view-products" class="section">
          <div class="image-list">
            <c:forEach items="${product}" var="Product">
                <div class="image-card">
                    <img src="../../static/allimage/${Product.image }" alt="Image" width="352px" height="374.4px" />
                    <div class="image-card-content">
                        <p class="image-card-description" style="font-weight: bold; font-size: large; ">${Product.name}</p>
                        <p class="image-card-description" style="font-weight: bold;">MRP:${Product.price}</p>
                        <p class="image-card-description" style="color: gray;">${Product.category}</p>
                        <p class="image-card-description" style="color: gray;">${Product.type}</p>
                        <div class="image-card-actions">
                           <a href="DeleteProduct/${Product.id}" onclick="return confirm('Are you sure you want to delete this product?')"> <button><i class="fas fa-trash">Delete</i></button></a>
                           <a href="editproduct/${Product.id }"> <button><i class="fas fa-edit">Update</i></button></a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        </div>
        
     
    </div>

    <!-- Include Bootstrap JS and any additional scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    function searchProducts() {
        const searchInput = document.getElementById("searchInput").value.toLowerCase();
        const productCards = document.querySelectorAll(".image-card");

        productCards.forEach(card => {
            const description = card.querySelector(".image-card-description").textContent.toLowerCase();
            const name = card.querySelector(".image-card-name").textContent.toLowerCase();
            const category = card.querySelector(".image-card-category").textContent.toLowerCase();
            const type = card.querySelector(".image-card-type").textContent.toLowerCase();

            if (description.includes(searchInput) || name.includes(searchInput) || category.includes(searchInput) || type.includes(searchInput)) {
                card.style.display = "block";
            } else {
                card.style.display = "none";
            }
        });
    }
</script>

    
</body>
</html>

    