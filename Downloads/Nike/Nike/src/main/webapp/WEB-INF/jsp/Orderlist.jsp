<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ORDER DETAILS</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
      
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
    




      
    </style>
</head>
<body>
    <div id="top2">
        <div id="nikelogo">

            <img src="../../static/images/pngwing.com.png" alt="" width="100%" height="100%" class="img-fluid">
        </div>
       

        <div class="search-bar" style="width: 84%;">
            
          
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
          <div class="container">
         <c:set var="total" value="0"></c:set>
            <h1>ORDER DETAILS</h1>
            <c:forEach items="${order }" var="order">
              <c:set value="${total+ order.p_id.price * order.quantity}" var="total"></c:set>
            </c:forEach>
            <form action="/nike/payment" method="post">
            <div class="card" style="width: 18rem; float: right;">
                <div class="card-body">
                  <h5 class="card-title" style=" font-weight: bolder;">ORDER SUMMARY</h5>
                  <hr>
                  <h6 class="card-subtitle mb-2 text-muted">SUB TOTAL:Rs.${total}</h6>
                    <br>
                  <h6 class="card-subtitle mb-2 text-muted">DELIVERY FEE:Rs.0</h6>
                  <hr>
                  <h5 class="card-title" style=" font-weight: bolder;">TOTAL:Rs.${total }</h5>
                  <div class="text-center">
                    <button class="btn  btn-lg" style="width: 90%;  background-color: black; color: white;" type="submit">Buy Now</button>
                </div>
                </div>
              </div>
           
            <div style="max-width: 63%; ">
            <table class="table">
               
                <tbody>
                    <tr>
                            <th></th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Size</th>
                            <th>Quantity</th>
                            <th>Total</th>
                           

                    </tr>
                <c:forEach items="${order}" var="order">
                    <tr>
                        <td>
                            <img src="../../static/allimage/${order.p_id.image }" alt="Product Image" class="card-img-top" width="100" style="width: 20%">
                        </td>
                    <div style="border: 1px black;">
                        <td class="card-title">${order.p_id.name}</td>
                        <td class="card-title">${order.p_id.price}</td>
                        <td>
                          <input type="text" name="size" value="${order.size }" class="form-control">
                        </td>
                        <td>
                            <input type="number" class="form-control" name="quantity" value="${order.quantity}">
                        </td>
                        <td>${order.p_id.price * order.quantity}</td>
                        <td>
                    </div>
                           
                        </td>
                    </tr>
                  
                </c:forEach>
               
                
                </tbody>
            </table>
            <input name="ttl" value="${total }" type="hidden">
            <div style=" font-weight: bolder;">
                <label for="">Address</label>
            </div>
            <div style="height: 140px;">
          
                <select  name="address" style="width: 42%;
                text-align: center;
                    border: 1px thin gray;
                
                height: 90%; 
            "  required>
                    <option value="${user.haddress }">${user.haddress }</option>
                    <option value="${user.waddress }">${user.waddress }</option>
                  
                </select>
                
                </form>
              
            </div>
        </div>
            
            
        
        
        <!-- Include Bootstrap JS and any additional scripts here -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</div>
</body>
</html>



    