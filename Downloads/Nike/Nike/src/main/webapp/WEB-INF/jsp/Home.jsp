<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="../../static/css/Homestyle.css" rel="stylesheet">
    
    <style>
    
     
    a
    {
    
    text-decoration: none;
    color: gray;
    }
    
    </style>
</head>
<body>
<div class="container-fluid">
    <div id="top" class="d-none d-lg-block">
            <div id="jordan">
                    <img src="../../static/images/air-jordan-logo.png" alt=""  id="img1" >
             <c:choose>
             <c:when test="${person.id!=null }">
              <div class="flex-container">
                       
                       <span id="findstore"> <a href="" id="a1" >Find a store</a></span>
                       <span style="position: relative; left: -19px;">|</span>
                       <span id="help"> <a href="" id="a1" >Help</a></span>
                       <span style="position: relative; left: -4px;">|</span>
                       <span id="join"> <a href="" id="a1" >Hii,${person.fname }</a></span>
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
                                            <li><a class="dropdown-item" href="myorder">My Order</a></li>
                                              <li><a class="dropdown-item" href="setting">Setting</a></li>
                                            <li><a class="dropdown-item" href="clogout">Log Out</a></li>
                                          
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
                       <span id="join"> <a href="signup" id="a1" >Join Us</a></span>
                       <span >|</span>
                       <span id="sign" style="position: relative;
    left: 4px;
  
"> <a href="login" id="a1" >Sign in</a></span>
                    </div>
               </c:otherwise>
               </c:choose>
            </div>
    </div>
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
                                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuMen" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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

                  <div class="button-container">
                   <a href="wishlist">  <button class="favorite-button">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart">
                <path d="M20.84 4.55a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.12a5.5 5.5 0 0 0-7.78 7.78l1.06 1.12L12 21l7.78-7.78 1.06-1.12a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
            </button> </a>
                    <a href="viewcart">  <button class="cart-button">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag">
                    <path d="M9 2h6a2 2 0 0 1 2 2v1h-2a1 1 0 0 1-1-1V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v1a1 1 0 0 1-1 1H6v-1a2 2 0 0 1 2-2z"></path>
                    <path d="M3 6a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V6z"></path>
                    <line x1="3" y1="10" x2="21" y2="10"></line>
                  </svg>
            </button></a>
                  </div>

    </div>

        <div id="custom">

        </div>
    <div id="img2">
        <img src="../../static/home/${img1.image }" class="img-fluid" alt="Responsive image">
        
            <div id="desc1">
               <a href="" style="text-decoration: none; color: black;">${img1.name }</a> 
               <div id="desc2">
               ${img1.descrip } <br>
             <a href="view/${img1.p.id}">  <button type="button" class="btn btn-dark" style="border-radius: 30px;">Shop</button></a> 
               </div>
            </div>
    

    </div>
  <div class="container-fluid">
<br><br><br><br><br>
<h3 style="padding-left: 95px;">Trend Alert</h3>
  </div>
  <div class="container mt-4">
    <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="row">
                    <!-- First 3 items -->
                    <div class="col-md-4">
                        <div class="card">
                       <a href="view/${img2.p.id}">
                            <img src="../../static/home/${img2.image }" class="card-img-top" alt="Item 1">
                            <div class="card-body">
                                <h5 class="card-title">${img2.name }</h5>
                                <p class="card-text">${img2.type }</p>
                                <p class="card-text">MRP:${img2.p.price }</p>
                            </div>
                                </a>
                        </div>
                    
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                        
                        <a href="view/${img3.p.id}">
                            <img src="../../static/home/${img3.image }" class="card-img-top" alt="Item 2">
                            <div class="card-body">
                                <h5 class="card-title">${img3.name }</h5>
                                <p class="card-text">${img3.type }</p>
                                <p class="card-text">MRP:${img3.p.price }</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                         <a href="view/${img4.p.id}">
                            <img src="../../static/home/${img4.image }" class="card-img-top" alt="Item 3">
                            <div class="card-body">
                                <h5 class="card-title">${img4.name }</h5>
                                <p class="card-text">${img4.type}</p>
                                <p class="card-text">MRP:${img4.p.price }</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row">
                    <!-- Next 3 items -->
                    <div class="col-md-4">
                        <div class="card">
                         <a href="view/${img5.p.id}">
                            <img src="../../static/home/${img5.image }" class="card-img-top" alt="Item 4">
                            <div class="card-body">
                                <h5 class="card-title">${img5.name }</h5>
                                <p class="card-text">${img5.type }</p>
                                <p class="card-text">MRP:${img5.p.price}</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                         <a href="view/${img6.p.id}">
                            <img src="../../static/home/${img6.image }" class="card-img-top" alt="Item 5">
                            <div class="card-body">
                                <h5 class="card-title">${img6.name }</h5>
                                <p class="card-text">${img6.type }</p>
                                <p class="card-text">MRP:${img6.p.price }</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                         <a href="view/${img7.p.id}">
                            <img src="../../static/home/${img7.image }" class="card-img-top" alt="Item 6">
                            <div class="card-body">
                                <h5 class="card-title">${img7.name }</h5>
                                <p class="card-text">${img7.type }</p>
                                <p class="card-text">MRP:${img7.p.price }</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<div class="card-row">
    <div class="card">
      <img src="../../static/home/${img8.image }" alt="Image 1">
     <a href="men/allmen"> <button class="card-button">${img8.name }</button></a>
    </div>
    <div class="card">
      <img src="../../static/home/${img9.image }" alt="Image 2">
     <a href="women/allwomen"> <button class="card-button">${img9.name }</button></a>
    </div>
    <div class="card">
      <img src="../../static/home/${img10.image }" alt="Image 3">
   <a href="kids/allkids"> <button class="card-button">${img10.name }</button></a>
    </div>
  </div>

<br><br><br><br>
  <footer id="final">
<table class="foot">

    <tr>
        <th><a href="" style="text-decoration: none;" class="col">FIND A STORE</a></th>
     
        <th><a href="" style="text-decoration: none;" class="col">GET HELP</a></th>
        <th><a href="" style="text-decoration: none;" class="col">ABOUT NIKE</a></th>
    </tr>
    <tr>
        <td><a href="" style="text-decoration: none;" class="col">Become a Member</a></td>
        <td><a href="" style="text-decoration: none;" class="col">Contact us</a></td>
        <td><a href="" style="text-decoration: none;"class="col">News</a></td>
    </tr>
</table>

  </footer>
</div>

    
</body>
</html>