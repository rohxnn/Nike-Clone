
<%@page import="com.example.Nike.modelcust.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike Cart</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

     <style>
      @media screen and (max-width: 767px) {}
.navbar-nav .dropdown:hover .dropdown-menu {
    display: block;}

    .nav-item.dropdown .dropdown-toggle::after {
    display: none;}

    .nav-item.dropdown:hover .nav-link {
        text-decoration: underline;}

    .dropdown-menu {
        padding: 30px; /* Adjust the values as needed */
       border: none;
         --bs-dropdown-link-active-bg: #F5F5F5;
    }

    .dropdown-menu .dropdown-item {
        padding: 30px 20px; /* Adjust the values as needed */
        transition: background-color 0.3s;
    }

    .dropdown-menu .dropdown-item:hover {
        background-color: #f0f0f0; /* Change to your desired hover color */
    }

    .nav-item {
        margin-right: 50px; /* Adjust the value as needed */
    }
    .navbar-toggler
    {
        position: absolute;
    right: -178px;
    top: 77px;
    }
      #top2
{
    background: #fff;
    position: relative;
    height: 60px;
    width: 100%;
    transition: transform .15s ease;
    display: flex;
}

  
 
 
  
  .feather {
    width: 1em;
    height: 1em;
    vertical-align: -0.125em;
    stroke-width: 2;
  }
  @media screen and (max-width: 768px) {
            #nikelogo {
                max-width: 50px;
                margin-left: 10px;
            }

            

            .button-container {
                flex-direction: column;
                align-items: center;
                margin-top: 10px;
            }
        }
 
    
    .button-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 9vh;
      }
      
      .favorite-button,
      .cart-button {
        background: transparent;
        border: none;
        outline: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
        border-radius: 50%;
        margin: 0 15px;
      }
      
      .favorite-button:hover,
      .cart-button:hover {
        background-color: rgba(0, 0, 0, 0.1);
      }
      
      .feather {
        width: 1.5em;
        height: 1.5em;
        vertical-align: middle;
      }
    #nikelogo
{
    max-width: 70px;
    max-height: 100%;
    margin-left: 47px;
}
#option
{
    max-height: 100%;
    width: 70%;
    border: 1px black;
    margin-left: 225px;
  
}
.bg-light {
    background: white;
    --bs-bg-opacity: none;
}
.flex-container {
    display: flex;
    position: absolute;
    left: 2030%;
    padding-top: 7px;
}

      
        body
        {
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
        }

     

        @media screen and (max-width: 767px) {
            /* Adjustments for smaller screens */
            #nikelogo {
                max-width: 50px;
                margin-left: 10px;
            }
        }
        .cart {
    max-width: 800px;
    margin: 0 auto;
    background-color: #ffffff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.cart-item {
    display: flex;
    
}

.product-image {
    max-width: 150px;
    max-height: 150px;
    margin-right: 50px;
}

.product-details {
    flex: 1;
    display: inline-grid;
 
}

.product-name {
    font-size: 24px;
    margin: 0;
}

.product-price {
    font-size: 18px;
    margin: 10px 0;
}

.size-options {
    margin-top: 10px;
}

label {
    font-size: 16px;
    margin-right: 10px;
}

select {
    font-size: 16px;
    padding: 5px;
}

.buttons {
    margin-top: 110px;
    margin-left: 157px;
    text-align: center;
    background-color: black;
    border-radius: 40px;

}

button {
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border: none;
    border-radius: 5px;
}

.buy-now-button {
    background-color: #4CAF50;
    color: #fff;
    margin-right: 10px;
}

.add-to-cart-button {
    background-color: #2196F3;
    color: #fff;
}
@media screen and (max-width: 767px) {
    #nikelogo {
        max-width: 50px;
        margin-left: 10px;
    }

    .cart {
        max-width: 90%; /* Adjust the width for smaller screens */
        margin: 0 auto;
        /* ... other styles ... */
    }
}
@media screen and (max-width: 768px) {
    .button-container {
        flex-direction: column;
        align-items: center;
        margin-top: 10px;
    }
}
@media screen and (max-width: 767px) {
    .cart-item {
        flex-direction: column; /* Change to column layout for smaller screens */
    }

    .product-image {
        margin-right: 0; /* Remove margin for smaller screens */
    }

    .product-details {
        margin-top: 10px; /* Adjust the margin for proper spacing */
    }
}
a
{
text-decoration: none;
color: gray;
}
input
{
    border: none;
}



      
    </style>
</head>
<body>
    <div id="top2">
        <div id="nikelogo">

             <a href="in"> <img src="../../static/images/pngwing.com.png" alt="" width="100%" height="100%"></a>
        </div>
        <div id="option">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container" style="max-inline-size: min-content; ">
                    
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuMen" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                   <a href="men/allmen">Men</a> 
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuMen">
                                    <li><a class="dropdown-item" href="men/shoe">Shoes</a></li>
                                    <li><a class="dropdown-item" href="men/cloth">Clothing</a></li>
                                  
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuWomen" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                      <a href="women/allwomen">Women</a> 
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuWomen">
                                    <li><a class="dropdown-item" href="women/shoe">Shoes</a></li>
                                    <li><a class="dropdown-item" href="women/cloth">Clothing</a></li>
                               
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuKids" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                     <a href="kids/allkids">Kids</a> 
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuKids">
                                    <li><a class="dropdown-item" href="kids/shoe">Shoes</a></li>
                                    <li><a class="dropdown-item" href="kids/cloth">Clothing</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuKids" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                      <a href="../kids/allkids">Sale</a> 
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuKids">
                                    <li><a class="dropdown-item" href="#">Men's Sale</a></li>
                                    <li><a class="dropdown-item" href="#">Women's Sale</a></li>
                                    <li><a class="dropdown-item" href="#">Kids's Sale</a></li>
                                    
        
                                </ul>
                                
                            </li>
                          
                    </div>
                </div>
            </nav>
        </div>

        <div class="search-bar">
            
          
          </div>

           <div class="button-container">
             <a href="../wishlist">  <button class="favorite-button">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart">
                <path d="M20.84 4.55a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.12a5.5 5.5 0 0 0-7.78 7.78l1.06 1.12L12 21l7.78-7.78 1.06-1.12a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
            </button> </a>
            <a href="../viewcart">  <button class="cart-button">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag">
                    <path d="M9 2h6a2 2 0 0 1 2 2v1h-2a1 1 0 0 1-1-1V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v1a1 1 0 0 1-1 1H6v-1a2 2 0 0 1 2-2z"></path>
                    <path d="M3 6a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V6z"></path>
                    <line x1="3" y1="10" x2="21" y2="10"></line>
                  </svg>
            </button></a>
          </div>
</div>
 

    <div class="cart">
    <h3>Bag</h3>
    <div class="cart-item">
    <c:set var="ttl" value="0"/>
    <c:forEach items="${cart}" var="cartItem"> 
    <div class="product-details">
    <div style="display: flex;">
       <div> <img src="../../static/allimage/${cartItem.p_id.image }" alt="Product Image" class="product-image">
     </div>
 
       <div> <div style="display: grid;  grid-template-columns: 5fr 1fr; ">
           <div><h2 class="product-name">${cartItem.p_id.name }</h2></div> 
       
              <div >  <h4><input type="text" value="MRP:${cartItem.p_id.price*cartItem.quantity }" style="text-align: right;"></h4></div>

        </div>
            <p class="product-price">MRP:${cartItem.p_id.price }</p>
            <div class="size-options">
            <label>Size</label>
          <input type="text" value="${cartItem.size }">
                 <br><br>
                <label for="size">Select Quanity:</label>
               <input type="text" value="${cartItem.quantity }">
                <br><br>
              <a href="delc/${cartItem.id}">     <button style="background: none;"><svg aria-hidden="true" focusable="false" viewBox="0 0 24 24" role="img" width="24px" height="24px" fill="none"><path stroke="currentColor" stroke-miterlimit="10" stroke-width="1.5" d="M14.25 7.5v12m-4.5-12v12M5.25 6v13.5c0 1.24 1.01 2.25 2.25 2.25h9c1.24 0 2.25-1.01 2.25-2.25V5.25h2.75m-2.75 0H21m-12-3h5.25c.83 0 1.5.67 1.5 1.5s-.67 1.5-1.5 1.5H3"></path></svg>
                  </button></a>
             <button style="background: none;"><svg aria-hidden="true" focusable="false" viewBox="0 0 24 24" role="img" width="24px" height="24px" fill="none"><path stroke="currentColor" stroke-width="1.5" d="M16.794 3.75c1.324 0 2.568.516 3.504 1.451a4.96 4.96 0 010 7.008L12 20.508l-8.299-8.299a4.96 4.96 0 010-7.007A4.923 4.923 0 017.205 3.75c1.324 0 2.568.516 3.504 1.451l.76.76.531.531.53-.531.76-.76a4.926 4.926 0 013.504-1.451"></path></svg>
                  </button>
                </div>
                </div>
                   </div>
              <hr>
              
              
              <c:set var="ttl" value="${ttl+cartItem.p_id.price*cartItem.quantity }"/>
                 </c:forEach>
                  <div style="position: relative;
                  top: 96px; left: 160px;
              ">
                   </div>
             
                   
                     <h3>Total Price: <c:out value="${ttl }"/> <!-- Calculate total price here using JavaScript or JSP --> </h3>
                
          <a href="buy">  <div class="buttons">
                <button style="background-color: black; color: white; font-weight: bold;"  >Member Checkout</button>     
            </div></a>
        </div>
       </div>
    <!-- Include Bootstrap JS and any additional scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


