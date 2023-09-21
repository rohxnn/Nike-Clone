<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike WOMEN</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<script>
<script>
function searchProducts() {
    const searchInput = document.getElementById("searchInput").value.toLowerCase();
    const productCards = document.querySelectorAll(".image-card");

    productCards.forEach(card => {
        const description = card.querySelector(".image-card-description").textContent.toLowerCase();
        if (description.includes(searchInput)) {
            card.style.display = "block";
        } else {
            card.style.display = "none";
        }
    });
}
</script>


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
      #top
{
    max-width: 1920px;
    max-height: 60px;
    background-color: #F5F5F5;
    display: flex;
   
                flex-direction: column;
                align-items: center;
              
}
#jordan
{
    height: 40px;
    max-width: 60px;
    position: relative;
    left: 32px
 
}
#img1
{
    height:24px; 
    width:24px;
    position: absolute;
    left: 28%;
    top: 19%;
}
.flex-container {
    display: flex;
    position: absolute;
    left: 2030%;
    padding-top: 7px;
}

#a1
{
    color: rgb(59, 56, 56);
    text-decoration: none;
    font-size: small;
}
#findstore
{
   
    display: flex;
    width: 99px;
    padding-top: 4px;

}
#help
{
    position: relative;
    right: 12px;
    top: 1px;


}
#join
{
    display: flex;
    width: 50px;
    padding-top: 4px;

}
#sign
{
    display: flex;
    width: 58px;
    position: relative;
    left: -44px;
   top: -4px
   
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
.search-bar {
    display: flex;
    align-items: center;
    border: 1px solid #ccc;
    border-radius: 25px;
    background-color: white;
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
    max-width: 185px;
    margin: 10px auto;
    padding: 10px;
    position: relative;
    right: 45px;
    background-color:  #F5F5F5;
    border: transparent;
  }
  
  .search-icon {
    display: flex;
    align-items: center;
    margin-right: 10px;
  }
  
  .search-input {
    border: none;
    outline: none;
    padding: 10px;
    width: 100%;
    background: transparent;
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

            .search-bar {
                width: 100%;
                max-width: none;
                right: 0;
                margin: 10px 0;
            }

            .search-input {
                display: block;
                width: 100%;
                margin-top: 10px;
            }

            .button-container {
                flex-direction: column;
                align-items: center;
                margin-top: 10px;
            }
        }
  @media screen and (max-width: 600px) {
    .search-bar {
      justify-content: flex-start;
      padding: 10px;
    }
  
    .search-input {
      display: none;
    }
  
    .search-icon {
      margin-right: 0;
    }}
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
      }.feather-heart:active
      {
      fill: black;}
      
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
      
        body
        {
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
        }

  a
    {
    text-decoration: none;
    color: gray;
    }
         .add-to-cart-button {
    background-color: #F5F5F5;
    border: none;
    color: black;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 25px;
    cursor: pointer;
}

/* Hover effect */
.add-to-cart-button:hover {
    background-color: darkgrey;
}
    
     

        @media screen and (max-width: 767px) {
            /* Adjustments for smaller screens */
            #nikelogo {
                max-width: 50px;
                margin-left: 10px;
            }
        }
          

      
    </style>
</head>
<body>
<div class="container-fluid">
    <div id="top" class="d-none d-lg-block">
            <div id="jordan">
                    <img src="../../static/images/air-jordan-logo.png" alt=""  id="img1" >
             <c:choose>
             <c:when test="${user.id!=null }">
              <div class="flex-container">
                       
                       <span id="findstore"> <a href="" id="a1" >Find a store</a></span>
                       <span style="position: relative; left: -19px;">|</span>
                       <span id="help"> <a href="" id="a1" >Help</a></span>
                       <span style="position: relative; left: -4px;">|</span>
                       <span id="join"> <a href="" id="a1" >Hii,${user.fname }</a></span>
                        <ul class="navba-nav" style="list-style: none;">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuMen" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            <span id="sign" > <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="width: 24px">
  <!-- Head -->
  <circle cx="12" cy="8" r="6" />
  <!-- Chest -->
  <rect x="9" y="14" width="6" height="6"/>
</svg>
                       
                       </span>
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuMen">
                                            <li><a class="dropdown-item" href="men/shoe">My Profile</a></li>
                                            <li><a class="dropdown-item" href="../myorder">My Order</a></li>
                                              <li><a class="dropdown-item" href="../setting">Setting</a></li>
                                            <li><a class="dropdown-item" href="../clogout">Log Out</a></li>
                                          
                                        </ul>
                                    </li>
   
                       </ul>
                      
                       </div>
             </c:when>
             
          <c:otherwise>
                    <div class="flex-container">
                       
                       <span id="findstore"> <a href="" id="a1" >Find a store</a></span>
                       <span style="position: relative; left: -19px;">|</span>
                       <span id="help"> <a href="" id="a1" >Help</a></span>
                       <span style="position: relative; left: -4px;">|</span>
                       <span id="join"> <a href="../signup" id="a1" >Join Us</a></span>
                       <span >|</span>
                       <span id="sign" style="position: relative;
    left: 4px; top: 3px;
  
" > <a href="../login" id="a1" >Sign in</a></span>
                    </div>
               </c:otherwise>
               </c:choose>
            </div>
    </div>
    <div id="top2">
        <div id="nikelogo">

            <a href="../in"> <img src="../../static/images/pngwing.com.png" alt="" width="100%" height="100%"></a>
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
                                <a class="nav-link dropdown-toggle" href="allmen" id="navbarDropdownMenuMen" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                                      <a href="../men/allmen">Sale</a> 
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
            <div class="search-icon">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="#999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search">
                <circle cx="11" cy="11" r="8"></circle>
                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
              </svg>
            </div>
            <button onchange="searchProducts()" style="border: none; border-radius: 25px; background-color: #f5f5f5;"> <input type="text" id="searchInput" class="search-input" placeholder="Search..."></button>
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

<div class="container mt-4">
      
    <h3>WOMEN SHOE</h3>
    <br>

     <div id="view-products" class="section">
       <div class="image-list">
         <c:forEach items="${women}" var="Product">
             <div class="image-card">
             <a href="../view/${Product.id}" id="a1">
                 <img src="../../static/women/${Product.image}" alt="Image" width="352px" height="374.4px" />
                 <div class="image-card-content">
                     <p class="image-card-description" style="font-weight: bold; font-size: large; ">${Product.name}</p>
                     <p class="image-card-description" style="font-weight: bold;">MRP:${Product.price}</p>
                     <p class="image-card-description" style="color: gray;">${Product.category}</p>
                     <p class="image-card-description" style="color: gray;">${Product.type}</p>
                      <c:choose>
                     <c:when test="${Product.quantity<1 }">
                     <p class="image-card-description" style="color:red;">OUT OF STOCK</p>
                     </c:when>
                     </c:choose>
                     </a>
                       <a href="../addwish/${Product.id }"> <button class="favorite-button">   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart">
                <path d="M20.84 4.55a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.12a5.5 5.5 0 0 0-7.78 7.78l1.06 1.12L12 21l7.78-7.78 1.06-1.12a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg> </button></a>
                    <a href="../view/${Product.id}"> <button class="cart-button">  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag">
                    <path d="M9 2h6a2 2 0 0 1 2 2v1h-2a1 1 0 0 1-1-1V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v1a1 1 0 0 1-1 1H6v-1a2 2 0 0 1 2-2z"></path>
                    <path d="M3 6a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V6z"></path>
                    <line x1="3" y1="10" x2="21" y2="10"></line>
                  </svg></button></a>
                    
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
</body>
</html>


 