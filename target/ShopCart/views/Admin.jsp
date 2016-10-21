<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>
   /* Remove the navbar's default rounded borders and increase the bottom margin */
        /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 60px;
      border-radius: 10px;
     
    }
   
    /* Remove the jumbotron's default bottom margin */
      .jumbotron {
      margin-bottom: 0;
      padding:5px;
     
         }
   
   
    h2{
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;

font-weight:bold;
font-size:40px;
}
#header {
position:fixed;
top:0px;
left:0px;
width:100%;
padding:15px;
}
.form 
{
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin-top:10%;
  margin-left:35%;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

     
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  .h1 {
   color: #ea503f;
   font-family: courier;
 }
  }
  </style>
 
</head>
<body>
<div class="jumbotron" style="background:  #708090;">
  <h1>Style shop</h1>
  <p>All you need is a warehouse, some wheels and boxbee</p>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">styleshop</a>
    </div>
    
    <ul class="nav navbar-nav">
<li><a href="registerwebshopping.html"><span class="glyphicon glyphicon-home"></span>Admin Home</a></li>
 
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Gift Cards <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Birthday cards</a></li>
          <li><a href="#">Wedding cards</a></li>
          <li><a href="#">Friendship cards</a></li>
        </ul>
      </li>


 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Clothing<span class="caret"></span></a>   
     <ul class="dropdown-menu">
          <li><a href="#">Kurtis</a></li>
          <li><a href="#">Materials</a></li>
          <li><a href="#">Sarees</a></li>
           <li><a href="#">T-shirts</a></li>
           <li><a href="#">Jeans</a></li>
        </ul>
        </li>
        
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Electronic items <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Laptops</a></li>
          <li><a href="#">cellphones</a></li>
          <li><a href="#">Watches</a></li>
          <li><a href="#">Headphones</a></li>
          <li><a href="#">Blueetooths</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Sports <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Athletic clothing</a></li>
          <li><a href="#">Shoes</a></li> 
          <li><a href="#">Foot balls</a></li>
          <li><a href="#">Basket balls</a></li>
          <li><a href="#"></a></li>
        </ul>
      </li>
        
        

    </ul>

   <!--  <ul class="nav navbar-nav navbar-left">
      <li><a href="manageCategories">Manage Categories</a></li>
      <li><a href="manageSuppliers">Manage Suppliers</a></li>
      <li><a href="manageProducts">Manage Products</a></li>
      
    </ul>   
    -->  <ul class="nav navbar-nav navbar-right">
      <li><a href=""><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
     <!--  <li><a href="LoginHere"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
    </ul>
    </div>
</nav><br><br><br><br>

  
 <div class="container"><br>
 <a href="manageCategories" button type="button" class="btn btn-info">Manage Categories</button></a>
 <a href="manageSuppliers" button type="button" class="btn btn-info">Manage Suppliers</button></a>
 <a href="manageProducts" button type="button" class="btn btn-info">Manage Products</button></a>
 </div>

 
 
 
 
    <!-- <div id="footer">
      <div class="container">
        <p class="text-muted credit">Contact us<a href=" "></a> and <a href=" "></a>.</p>
      </div>
    </div>
   -->
</body>
</html>