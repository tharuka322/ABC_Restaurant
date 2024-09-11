<%@ page import="java.util.List" %>
<%@ page import="admin.Menu" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Menu</title>
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
<div class="container mt-5">
    <h2 class="text-center mb-4">Manage Menu</h2>

    <!-- Display Error Message -->
    <% 
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
    %>
    <div class="alert alert-danger"><%= errorMessage %></div>
    <% } %>

    <!-- Search Form -->
    <form method="get" action="ManageMenuServlet">
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="search" placeholder="Search menu" value="<%= request.getParameter("search") %>">
            <button class="btn btn-primary" type="submit">Search</button>
        </div>
    </form>

    <!-- Menu Table -->
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
            List<Menu> menuList = (List<Menu>) request.getAttribute("menuList");
            if (menuList != null) {
                for (Menu menu : menuList) {
            %>
            <tr>
                <td><%= menu.getId() %></td>
                <td><%= menu.getName() %></td>
                <td><%= menu.getPrice() %></td>
                <td><%= menu.getCategory() %></td>
                <td>
                    <a href="ManageMenuServlet?action=edit&id=<%= menu.getId() %>" class="btn btn-info btn-sm">Edit</a>
                    <a href="ManageMenuServlet?action=delete&id=<%= menu.getId() %>" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
            <% 
                }
            } else {
            %>
            <tr>
                <td colspan="5" class="text-center">No menu items found</td>
            </tr>
            <% 
            }
            %>
        </tbody>
    </table>

    <!-- Add New Menu Item Button -->
    <a href="add_menu.jsp" class="btn btn-secondary mt-3">Add New Menu Item</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
