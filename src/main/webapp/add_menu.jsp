
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Menu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
        <h2>Add Menu Item</h2>
        <form action="AddMenuServlet" method="post">
            <div class="form-group">
                <label for="name">Menu Item Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" class="form-control" id="price" name="price" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <select class="form-control" id="category" name="category">
                    <option value="Appetizer">Appetizer</option>
                    <option value="Main Course">Main Course</option>
                    <option value="Dessert">Dessert</option>
                    <option value="Beverage">Beverage</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Add Menu</button>
            <a href="manage_menu.jsp" class="btn btn-secondary">Manage Menu</a>
        </form>

        <c:if test="${not empty message}">
            <div class="alert alert-info mt-3">
                ${message}
            </div>
        </c:if>
    </div>
</body>
</html>
