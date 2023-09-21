<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
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

        .login-container {
            background-color: #fff;
            padding: 20px;
           
           
            width: 290px;

            position: absolute;
    left: 41%;
    top: 37%;

        }
        body
        {
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
        }

        .login-form {
            display: flex;
            flex-direction: column; 
        }

        .form-group {
            margin-bottom: 15px;
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
        select
        {
            width: 251px;
    height: 37px;

        }
          a
    {
    text-decoration: none;
    color: gray;
    }
  @media screen and (max-width: 767px) {
            /* Adjustments for smaller screens */
            #nikelogo {
                max-width: 50px;
                margin-left: 10px;
            }

            #option {
                margin-left: 0;
            }

            .login-container {
                width: 80%;
                left: 10%;
                top: 20%;
            }
      
    </style>
</head>
<body>
    <div id="top2">
        <div id="nikelogo">

           <a href="../nike/in"> <img src="../../static/images/pngwing.com.png" alt="" width="100%" height="100%"></a>
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
                                   <a href="men/allmen">Sale</a> 
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
            <input type="text" class="search-input" placeholder="Search">
          </div>

           <a href="../wishlist">  <button class="favorite-button">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart">
                <path d="M20.84 4.55a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.12a5.5 5.5 0 0 0-7.78 7.78l1.06 1.12L12 21l7.78-7.78 1.06-1.12a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
            </button> </a>
            <button class="cart-button">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag">
                    <path d="M9 2h6a2 2 0 0 1 2 2v1h-2a1 1 0 0 1-1-1V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v1a1 1 0 0 1-1 1H6v-1a2 2 0 0 1 2-2z"></path>
                    <path d="M3 6a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V6z"></path>
                    <line x1="3" y1="10" x2="21" y2="10"></line>
                  </svg>
            </button>
          </div>

</div>

    <div class="container mt-4">
        <h3 style="font-weight: bold;
        padding-left: 381px;">BECOME A NIKE MEMBER </h3>
        <div style="max-width: 289px;
        position: relative;
        left: 418px; color: gray;">
        <br>
            <p>Create your Nike Member profile and get first access to the very best of Nike products, inspiration and community.</p>
     
       </div>
        <div class="login-container">
          
            <br>
            <form class="login-form" action="/nike/signup" method="post">
                <div class="form-group">
                   
                    <input type="text" id="username" name="email" placeholder="Email Address" required>
                </div>
                <div class="form-group">
                   
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <input type="text" placeholder="First Name" name="fname" required>
                </div>
                <div class="form-group">
                    <input type="text" placeholder="Last Name" name="lname" required>
                </div>
                <div class="form-group">
                    <input type="date" placeholder="Date of Birth" name="date" required>
                   
                </div>
                <div class="form-group">
                    
                    <select name="country" required>
                        <option value="India">India</option>
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                        <!-- Add more country options here -->
                      </select> 
                </div>
               
                <div class="form-group">
                    <label> Male</label>
                        <input type="radio" name="gender" value="male" style="position: relative;
                        top: -31px; accent-color: black;">
                      
                      <label> Female</label>
                        <input type="radio" name="gender" value="female" style="position: relative;
                        top: -31px; accent-color: black;"> 
                     
                </div>
                <button class="login-button" type="submit">Join Us</button>
            </form>
        </div>
         
    </div>

    <!-- Include Bootstrap JS and any additional scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


    