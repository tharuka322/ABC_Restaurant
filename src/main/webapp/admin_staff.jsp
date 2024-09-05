<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Staff Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .navbar-brand img {
            height: 50px; 
        }
        .nav-item {
            margin-left: 10px;
        }
    </style>
</head>
<body>
  
<div class="container-xxl position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4 px-lg-5 py-3 py-lg-0">
        <a href="admin_home.jsp" class="navbar-brand p-0">
            <img src="images/logo.png" alt="Logo" style="width: 290px; height: auto;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-3 pe-4">
                <a href="admin_home.jsp" class="nav-item nav-link active">Home</a>
                <a href="admin_staff.jsp" class="nav-item nav-link">Staff</a>
                <a href="admin_menu.jsp" class="nav-item nav-link">Menu</a>
                <a href="admin_faq.jsp" class="nav-item nav-link">FAQ</a>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <h2 class="text-center mb-4">Manage Staff</h2>
        <form action="StaffServlet" method="post">
            <div class="row mb-3">
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                        <label for="username">Username</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                        <label for="password">Password</label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number" required>
                        <label for="phone">Phone Number</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
                        <label for="name">Name</label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-12">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="role" name="role" placeholder="Role" required>
                        <label for="role">Role</label>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Add Staff</button>
            <a href="admin_view_staff.jsp" class="btn btn-secondary">View Staff</a>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
