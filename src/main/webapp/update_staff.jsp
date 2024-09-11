<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Staff</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
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
                    <a class="nav-link" href="FAQView.jsp">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-danger" href="home.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<body>
<div class="container my-5">
    <h2 class="text-center mb-4">Update Staff</h2>
    
    <form action="AdminStaffServlet" method="post">
        <input type="hidden" name="username" value="${param.username}">
        <div class="row mb-3">
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" value="${staff.password}" required>
                    <label for="password">Password</label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number" value="${staff.phone}" required>
                    <label for="phone">Phone Number</label>
                </div>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Name" value="${staff.name}" required>
                    <label for="name">Name</label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="text" class="form-control" id="role" name="role" placeholder="Role" value="${staff.role}" required>
                    <label for="role">Role</label>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Update Staff</button>
        <a href="admin_view_staff.jsp" class="btn btn-secondary">Cancel</a>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
