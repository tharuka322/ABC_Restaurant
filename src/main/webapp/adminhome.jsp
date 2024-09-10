<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar-brand img {
            height: 50px;
        }
        .nav-item {
            margin-left: 10px;
        }
        .container {
            margin-top: 20px;
        }
    </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="images/logo.png" alt="Logo" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="adminhome.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin_staff.jsp">Staff</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_menu.jsp">Menu</a>
                </li>
                  <li class="nav-item">
                    <a class="nav-link" href="ViewBooking.jsp">Booking</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin_faq.jsp">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-danger" href="admin_logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h1>Welcome, Admin</h1>
    <p>You have successfully logged in as an admin.</p>
    <p>Use the navigation bar to manage staff, menu, and FAQs.</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
