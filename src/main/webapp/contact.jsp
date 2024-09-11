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
            <a href="home.jsp" class="navbar-brand p-0">
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
        <div class="container-xxl py-5 hero-header mb-0" style="background-image: url('images/cover.jpg'); background-size: cover; background-position: center;">
            <div class="container my-5 py-5">
                <div class="row align-items-center justify-content-center text-center g-5">
                    <div class="col-lg-8">
                        <h1 class="display-3 text-white animated fadeInDown">Contacts</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact Start -->
        <div class="container-xxl py-5" style="background-color: #f8f9fa;">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="mb-5">Contact Us</h1>
                </div>
                <div class="row">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <h3 class="mb-4">FAQs</h3>
                        <form action="FAQServlet" method="post">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control border border-primary" id="name" name="name" placeholder="Your Name" required>
                                        <label for="name">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="email" class="form-control border border-primary" id="email" name="email" placeholder="Your Email" required>
                                        <label for="email">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="tel" class="form-control border border-primary" id="phone" name="phone" placeholder="Your Phone Number" required>
                                        <label for="phone">Your Phone Number</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <textarea class="form-control border border-primary" placeholder="Your Message" id="message" name="message" style="height: 150px" required></textarea>
                                        <label for="message">Your Message</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-6">
                        <h3 class="mb-4">Our Contact Information</h3>
                        <p><i class="fas fa-map-marker-alt me-2"></i>543, Colombo Road, Kurunegala, Srilanka</p>
                        <p><i class="fas fa-phone-alt me-2"></i>0751324352</p>
                        <p><i class="fas fa-envelope me-2"></i>info@abcrestaurantku.com</p>
                        <p><i class="fas fa-map-marker-alt me-2"></i>543, Colombo Road, kandy, Srilanka</p>
                        <p><i class="fas fa-phone-alt me-2"></i>0751324352</p>
                        <p><i class="fas fa-envelope me-2"></i>info@abcrestaurantky.com</p>
                        <p><i class="fas fa-map-marker-alt me-2"></i>543, kegalla Road, rathnapura, Srilanka</p>
                        <p><i class="fas fa-phone-alt me-2"></i>0751324352</p>
                        <p><i class="fas fa-envelope me-2"></i>info@abcrestaurantka.com</p>
                        <p><i class="fas fa-map-marker-alt me-2"></i>543, kandy Road, mathale, Srilanka</p>
                        <p><i class="fas fa-phone-alt me-2"></i>0751324352</p>
                        <p><i class="fas fa-envelope me-2"></i>info@abcrestaurantma.com</p>
                        <p><i class="fas fa-map-marker-alt me-2"></i>543, galle Road, colombo, Srilanka</p>
                        <p><i class="fas fa-phone-alt me-2"></i>0751324352</p>
                        <p><i class="fas fa-envelope me-2"></i>info@abcrestaurantco.com</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
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
                    <p><a href="home.jsp" class="text-white" style="text-decoration: none;">Home</a></p>
                    <p><a href="about.jsp" class="text-white" style="text-decoration: none;">About Us</a></p>
                    <p><a href="gallery.jsp" class="text-white" style="text-decoration: none;">Gallery</a></p>
                    <p><a href="contact.jsp" class="text-white" style="text-decoration: none;">Contact</a></p>
                </div>
                <!-- Contact Section -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Contact</h5>
                    <p><i class="fas fa-home me-3"></i> 543, Colombo Road, Kurunegala, Srilanka</p>
                    <p><i class="fas fa-envelope me-3"></i> info@abcrestaurantku.com</p>
                    <p><i class="fas fa-phone me-3"></i> 0373423453</p>
                    <p><i class="fas fa-print me-3"></i> 0374534657</p>
                </div>
                <!-- Social Section -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Follow Us</h5>
                    <a href="#"><img src="images/Social Media Icons.png" alt="Social Media" class="mr-4" style="width: 240px;"></a>
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
