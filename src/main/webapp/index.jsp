
<%@page import= "com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<%@include file = "../component/allcss.jsp" %>

<style type="text/css">

 .paint-card {
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}

</style>
</head>
<body>

<%@include file="component/navbar.jsp" %>



<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hos1.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos4.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos5.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

  <div class="container p-3">
  <p class= "text-center fs-2"> Key Features of our Hospital</p>
  

  <div class= "row">
  <div class= "col-md-8 p-5">
    <div class= "row">
  <div class="col-md-6">
  <div class= "card paint-card">
  <div class= "card-body">
  <p class= "fs-5">100% safety</p>
  <p> "Our hospital system ensures 100% safety for patients,
   staff, and visitors through rigorous protocols and vigilant adherence to standards."</p>
  </div>
  </div>
  </div>
  
 
  <div class="col-md-6 ">
  <div class= "card paint-card">
  <div class= "card-body">
  <p class= "fs-5">Clean Enviroment</p>
  <p>In our hospital system, maintaining a clean environment is paramount,
   as it not only ensures patient safety but also promotes a healthy and comfortable
    </p>
  </div>
  </div>
  </div>
  
  
  
  <div class="col-md-6 mt-2">
  <div class= "card paint-card">
  <div class= "card-body">
  <p class= "fs-5">Friendly Doctors</p>
  <p>Our hospital prides itself on having friendly doctors
   who provide compassionate care and foster positive relationships with patients."
  </p>
  </div>
  </div>
  </div>
  
 
  <div class="col-md-6 mt-2">
  <div class= "card paint-card">
  <div class= "card-body">
  <p class= "fs-5">Medical Research</p>
  <p>"Medical research conducted at our institution drives 
  innovation, advances healthcare practices, and enhances patient outcomes."
  </p>
  </div>
  </div>
  </div>
  </div>
  </div>
   
   <div class="col-md-4">
   <img alt= "" src= "img/doca.jpg" height="550px">
   </div>
  
  </div>
  </div>
  
  <div class= "container p-2">
  <p class= "text-center fs-2 ">Our Team</p>
  
  <div class= "row">
  <div class= "col-md-3">
  <div class= "card paint-card">
  <div class= "card-body text-center">
  <img src= "img/rtg.jpeg" width= "250px" height= "300px">
  <p class= "fw-bold fs-5"> Smoka gami</p>
  <p class= "fs-7">(CEO & CHAIRMAN IN SMOKING)</p>
  </div>
  </div>
  </div>
  
   <div class= "col-md-3">
  <div class= "card paint-card">
  <div class= "card-body text-center">
  <img src= "img/uyt.jpeg" width= "250px" height= "300px">
  <p class= "fw-bold fs-5"> KIRI CHARA</p>
  <p class= "fs-7">(Cheif Doctor in hairstyles)</p>
  </div>
  </div>
  </div>
  
   <div class= "col-md-3">
  <div class= "card paint-card">
  <div class= "card-body text-center">
  <img src= "img/red.jpeg" width= "250px" height= "300px">
  <p class= "fw-bold fs-5"> DR.PADMASIRI</p>
  <p class= "fs-7">Child care specialist</p>
  </div>
  </div>
  </div>
  
   <div class= "col-md-3">
  <div class= "card paint-card">
  <div class= "card-body text-center">
  <img src= "img/lokka.jpeg" width= "250px" height= "300px">
  <p class= "fw-bold fs-5"> DR.CHAMA</p>
  <p class= "fs-7">(CEO & CHAIRMAN)</p>
  </div>
  </div>
  </div>
  

  
  
  </div>
  </div>
  
  <%@include file= "component/footer.jsp" %>
    

</body>
</html>