<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html lang="en">
<head>
  <title>Productpage</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="https://code.jquery.com/jquery-2.2.2.min.js" 
     integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI=" 
     crossorigin="anonymous"></script>
     <link 
 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
     
 <script 
     src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" 
     integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" 
     crossorigin="anonymous"></script>
 <link href='https://fonts.googleapis.com/css?family=Ubuntu+Mono' rel='stylesheet' type='text/css'>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


  </style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container">
<div class="col-md-5">
 <div class="row">
  <div class="col-md-12">
	 <br/>     
	 <h1><font color="black">Ibanez White, electric guitar</font>${selectedProduct.name}</h1> 
     <h4><font color="black">${selectedProduct.category.name}<br/>
     ${selectedProduct.supplier.name}</font></h4>
 </div>
</div><!-- end row-->
<div class="row">
 <div class="col-md-12">
  <font color="black"><p class="description" >
  product description
  ${selectedProduct.description}
  </p></font>
 </div>
</div><!-- end row -->


<div class="row">
 <div class="col-md-12 bottom-rule">
  <font color="black"><h2 class="product-price">Rs.${selectedProduct.price}</h2></font>
 </div>
</div><!-- end row -->

<br>
<div class="col-md-12">
<form:form action="cartView">
<div class="col-sm-4">
<button class="btn btn-lg btn-brand btn-full-width" type="submit" style="background-color:#e0e0e0">
   Add to Cart
  </button></div>
</form:form>
<form:form action="buy">
<div class="col-sm-4">
<button class="btn btn-lg btn-brand btn" type="submit" style="background-color:#E0E0E0; btn-hover:#E0E0E0">
   Buy Now
  </button>
</div>
</form:form>
</div>
<br>
<div class="row">
<div class="col-sm-12">
<h2>
Related Items:</h2></div>
<div class="col-sm-12">
<div class="row">
<div class="col-sm-4">
<img src="<c:url value="resources/images/ibanez white-pearl_large.jpg"/>" class="img-rounded" alt="Image" width="100" height="100">
<h4>rtyuyi</h4></div>
<div class="col-sm-4">
<img src="<c:url value="resources/images/ibanez white-pearl_large.jpg"/>" class="img-rounded" alt="Image" width="100" height="100">
<h4>rtyuyi</h4></div>
<div class="col-sm-4">
<img src="<c:url value="resources/images/ibanez white-pearl_large.jpg"/>" class="img-rounded" alt="Image" width="100" height="100">
<h4>rtyuyi</h4></div>
</div></div>

</div>
</div>
<div class="col-sm-3">
<h2>dfghgjhk</h2>
</div>

<!-- Nav tabs>
<ul class="nav nav-tabs" role="tablist">
 <li role="presentation" class="active">
  <a href="#description"
   aria-controls="description"
   role="tab"
   data-toggle="tab"
  >Description</a>
 </li>
 <li role="presentation">
  <a href="#features"
   aria-controls="features"
   role="tab"
   data-toggle="tab"
  >Features</a>
 </li>
 <li role="presentation">
  <a href="#notes"
   aria-controls="notes"
   role="tab"
   data-toggle="tab"
   >Notes</a>
 </li>
 <li role="presentation">
  <a href="#reviews"
   aria-controls="reviews"
   role="tab"
   data-toggle="tab"
  >Reviews</a>
 </li>
</ul>


 
<!-- Tab panes >
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="description">
 ...
</div>
 <div role="tabpanel" class="tab-pane top-10" id="features">
  ...
 </div>
 <div role="tabpanel" class="tab-pane" id="notes">
  ...
 </div>
 <div role="tabpanel" class="tab-pane" id="reviews">
  ...
 </div>
</div>

</div>
</div>
</div><!-- end container -->

</div>





</body>
</html>