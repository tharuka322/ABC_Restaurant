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
                <h1 class="display-3 text-white animated fadeInDown">About Us</h1>
            </div>
        </div>
    </div>
</div>





    <!-- About Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5 align-items-center">
            <!-- Single Image -->
            <div class="col-lg-6 text-center">
                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.1s" src="images/pexels-pixabay-262978.jpg" alt="About Image">
            </div>
            <div class="col-lg-6">
                <h1 class="mb-4">Welcome to <i class="fa fa-utensils text-primary me-2"></i>ABC Restaurants</h1>
                <p class="mb-4">At ABC Restaurants, we’ve been serving exceptional food and creating memorable dining experiences since 2010. With locations across Sri Lanka, including Rathnapura, Mathale, Colombo, Kurunegala, and Kandy, our mission is to offer high-quality, delicious meals in a welcoming atmosphere. We pride ourselves on using fresh ingredients, delivering friendly service, and supporting our local communities. Join us at ABC Restaurants for a taste of excellence and hospitality.</p>
            </div>
        </div>
    </div>
</div>
<!-- About End -->

 <!-- Team Start -->
<div class="container-xxl pt-5 pb-3">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h1 class="mb-5">Our Team</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item text-center rounded overflow-hidden" style="background-color: #f8f9fa; padding: 20px;">
                    <div class="team-img rounded overflow-hidden mb-4">
                        <img class="img-fluid" src="images/team member.jpg" alt="">
                    </div>
                    <h5 class="mb-0">Mr.Darshan</h5>
                    <small>Founder/Owner</small>
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item text-center rounded overflow-hidden" style="background-color: #e9ecef; padding: 20px;">
                    <div class="team-img rounded overflow-hidden mb-4">
                        <img class="img-fluid" src="images/hr manager.jpg" alt="">
                    </div>
                    <h5 class="mb-0">HR Manager</h5>
                    <small>Miss.Dinushi</small>
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item text-center rounded overflow-hidden" style="background-color: #dee2e6; padding: 20px;">
                    <div class="team-img rounded overflow-hidden mb-4">
                        <img class="img-fluid" src="images/marketing manager.jpg" alt="">
                    </div>
                    <h5 class="mb-0">Marketing Manager</h5>
                    <small>Mr.Aravinda</small>
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="team-item text-center rounded overflow-hidden" style="background-color: #ced4da; padding: 20px;">
                    <div class="team-img rounded overflow-hidden mb-4">
                        <img class="img-fluid" src="images/head-chef.jpeg" alt="">
                    </div>
                    <h5 class="mb-0">Head Chef</h5>
                    <small>Mr.Hasantha</small>
                   
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Team End -->

<!-- Our Restaurants Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h1 class="mb-5">Our Restaurants</h1>
        </div>
        <div class="row g-4">
            <!-- Restaurant 1 -->
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="restaurant-item card border-0 shadow rounded overflow-hidden">
                    <div class="image-container">
                        <img class="card-img-top" src="images/restu.jpg" alt="Restaurant Image">
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title mb-0">ABC Restaurant</h5>
                        <p class="card-text">Rathnapura</p>
                        <p class="card-text">Contact: +123 456 7890</p>
                    </div>
                </div>
            </div>
            <!-- Restaurant 2 -->
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="restaurant-item card border-0 shadow rounded overflow-hidden">
                    <div class="image-container">
                        <img class="card-img-top" src="images/kuru.webp" alt="Restaurant Image">
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title mb-0">ABC Restaurant</h5>
                        <p class="card-text">Mathale</p>
                        <p class="card-text">Contact: +123 456 7890</p>
                    </div>
                </div>
            </div>
            <!-- Restaurant 3 -->
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="restaurant-item card border-0 shadow rounded overflow-hidden">
                    <div class="image-container">
                        <img class="card-img-top" src="images/res2.jpg" alt="Restaurant Image">
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title mb-0">ABC Restaurant</h5>
                        <p class="card-text">Colombo</p>
                        <p class="card-text">Contact: +123 456 7890</p>
                    </div>
                </div>
            </div>
            <!-- Restaurant 4 -->
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="restaurant-item card border-0 shadow rounded overflow-hidden">
                    <div class="image-container">
                        <img class="card-img-top" src="images/res3.webp" alt="Restaurant Image">
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title mb-0">ABC Restaurant</h5>
                        <p class="card-text">Kurunegala</p>
                        <p class="card-text">Contact: +123 456 7890</p>
                    </div>
                </div>
            </div>
            <!-- Restaurant 5 -->
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.9s">
                <div class="restaurant-item card border-0 shadow rounded overflow-hidden">
                    <div class="image-container">
                        <img class="card-img-top" src="images/res4.webp" alt="Restaurant Image">
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title mb-0">ABC Restaurant</h5>
                        <p class="card-text">Kandy</p>
                        <p class="card-text">Contact: +123 456 7890</p>
                    </div>
                </div>
            </div>
       
       
        </div>
    </div>
</div>
</div>
<!-- Our Restaurants End -->


        
        
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

