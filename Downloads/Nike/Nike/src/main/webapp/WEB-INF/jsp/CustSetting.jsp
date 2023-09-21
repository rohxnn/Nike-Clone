
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Setting</title>
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


a
{
text-decoration: none;
color: gray;
}
input
{
    border: none;
}
/* Reset some default styles */
body, h1, h2, p, ul, li {
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: white;
}

.profile-container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;


    border-radius: 5px; text-align: center;
}

h1 {
    font-size: 24px;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
    text-align: left;
}

label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
}

input[type="password"],
input[type="text"],
input[type="tel"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

button {
    background-color: #000000;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    font-size: 18px;
    cursor: pointer;
}



      
    </style>
</head>
<body>
    <div id="top2">
        <div id="nikelogo">

           <a href=""> <img src="../../static/images/pngwing.com.png" alt="" width="100%" height="100%" class="img-fluid"></a>
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
            <button class="favorite-button">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart">
                <path d="M20.84 4.55a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.12a5.5 5.5 0 0 0-7.78 7.78l1.06 1.12L12 21l7.78-7.78 1.06-1.12a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
            </button>
            <button class="cart-button">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag">
                    <path d="M9 2h6a2 2 0 0 1 2 2v1h-2a1 1 0 0 1-1-1V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v1a1 1 0 0 1-1 1H6v-1a2 2 0 0 1 2-2z"></path>
                    <path d="M3 6a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V6z"></path>
                    <line x1="3" y1="10" x2="21" y2="10"></line>
                  </svg>
            </button>
          </div>

</div>


    <div class="profile-container">
        <h1>Account Details</h1>
       
            <label for="">Password</label>
            <input type="password" id="password"  value="${user.password }"> 
        
             <button type="button" class="btn btn-Dark" data-toggle="modal" data-target=".bd-example-modal-lg">Edit</button>

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <form class="dropdown-men p-4" action="/nike/setting/pass" method="post" >
            <div class="form-group">
              <label for="exampleDropdownFormEmail2">New Password</label>
              <input type="password" class="form-control" id="exampleDropdownFormEmail2" placeholder="New Password" name="newpass">
            </div>
            <div class="form-group">
              <label for="exampleDropdownFormPassword2">Re-Enter Password</label>
              <input type="password" class="form-control" id="exampleDropdownFormPassword2" placeholder="Re-Enter Password" name="repass">
            </div>
            <c:choose>
            <c:when test="${none!=null }">
            <p style="color: red;">You have recheck your password.Try again!</p>
            </c:when>
            </c:choose>
           
            <button type="submit" class="btn btn-Dark" >Save</button>
          </form>
           
    </div>
  </div>
</div>
<form action="/nike/setting" method="post">
            <div class="form-group">
                <label for="address">Home Address:</label>
                <input type="text" id="address" name="haddress" placeholder="Home Address" value="${user.haddress }">
               
            </div>
            <div class="form-group">
                <label for="address">Work Address:</label>
                <input type="text" id="address" name="waddress" placeholder="Work Address" value="${user.waddress }">
               
            </div>
        
            <div class="form-group">
                <label for="phone">Change Phone Number:</label>
                <input type="tel" id="phone" name="ph_no" placeholder="New Phone Number" value="${user.ph_no }">
            </div>
            <button type="submit" >Save Changes</button>
        </form>
    </div>

  

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


    