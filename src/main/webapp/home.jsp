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
            height: 70px; 
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
                <a href="login.jsp" class="nav-item nav-link">Sign In</a>
            </div>
        </div>
    </nav>

    <div class="container-xxl py-5 hero-header mb-5" style="background-image: url('images/vintage-old-rustic-cutlery-dark.jpg'); background-size: cover; background-position: center;">
        <div class="container my-5 py-5">
            <div class="row align-items-center g-5">
 
                <div class="col-lg-6 text-center text-lg-start">
                    <h1 class="display-3 text-white animated slideInLeft">Enjoy Your<br>Day</h1>
                    <p class="text-white animated slideInLeft mb-4 pb-2">Book your table online at ABC Restaurant for a seamless dining experience. Reserve in advance, avoid waiting, and enjoy delicious meals in a cozy atmosphere.</p>
                   <a href="login.jsp" class="btn btn-primary py-sm-3 px-sm-5 me-3 animated slideInLeft">Book A Table</a>
                </div>
    
                <div class="col-lg-6 text-center text-lg-end overflow-hidden">
                    <img class="img-fluid animated slideInRight" src= images/food-png-2968.png alt="Delicious Food">
                </div>
            </div>
        </div>
    </div>
</div>



<!-- Service Start -->
<div class="container-xxl py-5">
    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
        <h1 class="mb-5">Our Services</h1>
    </div>

    <div class="container">
        <div class="row g-4">
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item rounded pt-3 h-100" style="background-color: #f8f9fa;">
                    <div class="p-4 text-center">
                        <img src="images/chef.png" alt="Service Image" class="img-fluid mb-3" style="max-height: 100px;">
                        <i class="fa fa-3x fa-user-tie text-primary mb-4"></i>
                        <h5>Master Chefs</h5>
                        <p>Our Master Chefs bring passion, creativity, and culinary expertise, crafting unforgettable dining experiences daily.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item rounded pt-3 h-100" style="background-color: #e9ecef;">
                    <div class="p-4 text-center">
                        <img src="images/food.png" alt="Service Image" class="img-fluid mb-3" style="max-height: 100px;">
                        <i class="fa fa-3x fa-utensils text-primary mb-4"></i>
                        <h5>Quality Food</h5>
                        <p>At ABC Restaurant, we serve high-quality, fresh, and delicious food, ensuring an unforgettable dining experience.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="service-item rounded pt-3 h-100" style="background-color: #dee2e6;">
                    <div class="p-4 text-center">
                        <img src="images/online order.png" alt="Service Image" class="img-fluid mb-3" style="max-height: 100px;">
                        <i class="fa fa-3x fa-cart-plus text-primary mb-4"></i>
                        <h5>Online Order</h5>
                        <p>Enjoy a seamless online ordering experience at ABC Restaurant with quick delivery and delicious meals.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="service-item rounded pt-3 h-100" style="background-color: #ced4da;">
                    <div class="p-4 text-center">
                        <img src="images/24.png" alt="Service Image" class="img-fluid mb-3" style="max-height: 100px;">
                        <i class="fa fa-3x fa-headset text-primary mb-4"></i>
                        <h5>24/7 Service</h5>
                        <p>Our restaurant offers exceptional 24/7 service, ensuring delicious meals anytime, day or night</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->



    <!-- About Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5 align-items-center">
 
            <div class="col-lg-6 text-center">
                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.1s" src="images/pexels-pixabay-262978.jpg" alt="About Image">
            </div>
            <div class="col-lg-6">
               <h1 class="mb-4">Welcome to <i class="fa fa-utensils text-primary me-2"></i>ABC Restaurants</h1>
                <p class="mb-4">At ABC Restaurants, we’ve been serving exceptional food and creating memorable dining experiences since 2010. With locations across Sri Lanka, including Rathnapura, Mathale, Colombo, Kurunegala, and Kandy, our mission is to offer high-quality, delicious meals in a welcoming atmosphere. We pride ourselves on using fresh ingredients, delivering friendly service, and supporting our local communities. Join us at ABC Restaurants for a taste of excellence and hospitality.</p>
               <a class="btn btn-primary py-3 px-5 mt-2" href="about.jsp">Read More</a>

            </div>
        </div>
    </div>
</div>
<!-- About End -->

   
<!-- Gallery Start -->
<div class="container-xxl py-5" style="background-color: #f8f9fa;">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h1 class="mb-5">Our Gallery</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="gallery-item rounded overflow-hidden shadow">
                    <img class="img-fluid" src="images/gallery1.jpg" alt="Gallery Image 1">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="gallery-item rounded overflow-hidden shadow">
                    <img class="img-fluid" src="images/gallery2.jpg" alt="Gallery Image 2">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="gallery-item rounded overflow-hidden shadow">
                    <img class="img-fluid" src="images/gallery3.jpg" alt="Gallery Image 3">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="gallery-item rounded overflow-hidden shadow">
                    <img class="img-fluid" src="images/gallery4.jpg" alt="Gallery Image 4">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.9s">
                <div class="gallery-item rounded overflow-hidden shadow">
                    <img class="img-fluid" src="images/gallery5.jpg" alt="Gallery Image 5">
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="1.1s">
                <div class="gallery-item rounded overflow-hidden shadow">
                    <img class="img-fluid" src="images/gallery6.jpg" alt="Gallery Image 6">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Gallery End -->


        
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
