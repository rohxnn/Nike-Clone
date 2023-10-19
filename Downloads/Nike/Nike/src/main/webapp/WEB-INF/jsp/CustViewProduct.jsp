
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike view</title>
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
    max-width: 1000px;
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
    max-width: 536px;
    margin-right: 20px;
}

.product-details {
    flex: 1;
    display: inline-grid;
    position: absolute;
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



      
    </style>
</head>
<body>
    <div id="top2">
        <div id="nikelogo">

            <img src="../../static/images/pngwing.com.png" alt="" width="100%" height="100%" class="img-fluid">
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
                                   <a href="../men/allmen">Men</a> 
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuMen">
                                    <li><a class="dropdown-item" href="../men/shoe">Shoes</a></li>
                                    <li><a class="dropdown-item" href="../men/cloth">Clothing</a></li>
                                  
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuWomen" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                      <a href="../women/allwomen">Women</a> 
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuWomen">
                                    <li><a class="dropdown-item" href="../women/shoe">Shoes</a></li>
                                    <li><a class="dropdown-item" href="../women/cloth">Clothing</a></li>
                               
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuKids" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                     <a href="../kids/allkids">Kids</a> 
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuKids">
                                    <li><a class="dropdown-item" href="../kids/shoe">Shoes</a></li>
                                    <li><a class="dropdown-item" href="../kids/cloth">Clothing</a></li>
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
    <div class="cart-item">
    <form action="/nike/addtocart" method="post">
        <img src="../../static/allimage/${view.image }" alt="Product Image" class="product-image">
        <div class="product-details">
            <h2 class="product-name">${view.name }</h2>
            <p class="product-price">MRP:${view.price }</p>
            <div class="size-options">
           <c:choose>
              <c:when test="${view.category=='shoe' }">
                <label for="size">Select Size:</label>
                <select id="size" name="size">
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                </select>
                </c:when>
                <c:otherwise>
                <label for="size">Select Size:</label>
                <select id="size" name="size">
                    <option value="S">S</option>
                    <option value="M">M</option>
                    <option value="L">L</option>
                    <option value="XL">XL</option>
                </select>
                </c:otherwise>
                </c:choose>
                 <br><br>
                <label for="size">Select Quanity:</label>
                <select id="size" name="quantity">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10s">10</option>
                    

                </select>
                <br><br>
                <div style="width: 58%">
                <p style="font-family: serif; font-size: x-large;">Nike products redefine athletic excellence and fashion-forward style. From iconic sneakers to cutting-edge sportswear, Nike blends innovation and aesthetics, setting the standard for performance and trendsetting fashion.

Step into a world of unrivaled comfort and support with Nike <c:choose> <c:when test="${view.category=='shoe' }"> footwear.</c:when>
<c:otherwise>Clothing.</c:otherwise>
</c:choose>





                </p>
                </div>
                <input type="hidden" name="customer" id="" value="${user.id }">
                <input type="hidden" name="p_id" value="${view.id }">
            
            </div>
            <div class="buttons">
            <c:choose>
            <c:when test="${view.quantity<1 }">
            <h3 style="color: red;">OUT OF STOCK</h3>
            </c:when>
         <c:otherwise>
                <button class="buy-now-button">Buy Now</button>
               <button type="submit" class="add-to-cart-button">Add to Cart</button>
               </c:otherwise>
                    </c:choose> 
            </div>
        </div>
           </form>
    </div>
   
</div>
  

    <!-- Include Bootstrap JS and any additional scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


