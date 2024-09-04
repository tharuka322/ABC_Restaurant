<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .navbar-brand img {
            height: 50px; 
        }
        .nav-item {
            margin-left: 10px;
        }
        .container {
            margin-top: 20px;
        }
        .slider img {
            width: 100%;
            height: auto;
        }
    </style>
    <style>
    .image-container {
        height: 250px; 
        overflow: hidden;
    }

    .image-container img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
</style>
</head>
<body>
  
<div class="container-xxl position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4 px-lg-5 py-3 py-lg-0">
       <a href="" class="navbar-brand p-0">
    <img src="images/logo.png" alt="Logo" style="width: 290px; height: auto;">
</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-3 pe-4">
                 <a href="home.jsp" class="nav-item nav-link active">Home</a>
                <a href="about.jsp" class="nav-item nav-link">About</a>
                <a href="restaurants.jsp" class="nav-item nav-link">Our Restaurants</a>
                <a href="menu.jsp" class="nav-item nav-link">Menu</a>
                 <a href="login.jsp" class="nav-item nav-link">Booking</a>
                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                <a href="admin_login.jsp" class="nav-item nav-link">Sign In</a>
            </div>
        </div>
    </nav>
  
    <div class="container-xxl py-5 hero-header mb-5" style="background-image: url('images/cover.jpg'); background-size: cover; background-position: center;">
    <div class="container my-5 py-5">
        <div class="row align-items-center justify-content-center text-center g-5">
            <div class="col-lg-8">
                <h1 class="display-3 text-white animated fadeInDown">Our Menu </h1>
            </div>
        </div>
    </div>
</div>
</div>
 <!-- Footer -->
<footer class="bg-dark text-white pt-5 pb-4">
    <div class="container text-center text-md-left">
        <div class="row text-center text-md-left">
            <!-- About Section -->
            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">ABC Restaurant</h5>
                <p>Experience the best dining at ABC Restaurant, and taste a unique blend of traditional and contemporary dishes to suit your taste.</p>
            </div>

            <!-- Links Section -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Quick Links</h5>
                <p><a href="#" class="text-white" style="text-decoration: none;">Home</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">About Us</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Gallery</a></p>
                <p><a href="#" class="text-white" style="text-decoration: none;">Contact</a></p>
            </div>

            <!-- Contact Section -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Contact</h5>
                <p><i class="fas fa-home mr-3"></i> 543, Colombo Road, Kurunegala, Srilanka</p>
                <p><i class="fas fa-envelope mr-3"></i> info@abcrestaurantku.com</p>
                <p><i class="fas fa-phone mr-3"></i> 0373423453</p>
                <p><i class="fas fa-print mr-3"></i> 0374534657</p>
            </div>

            <!-- Social Section -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Follow Us</h5>
                <a href="#"><img src="images/Social Media Icons.png" alt="Facebook" class="mr-4" style="width: 240px;"></a>
            
            </div>
        </div>

        <!-- Copyright -->
        <div class="row d-flex justify-content-center mt-3">
            <div class="col-md-8 col-lg-8">
                <p class="text-center text-white">
                    © 2024 ABC Restaurant. All rights reserved.
                </p>
            </div>
        </div>
    </div>
</footer>

<script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
