<%@ page import="Logins.User" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .welcome-message {
            margin-top: 100px;
            text-align: center;
        }
    </style>
    <meta http-equiv="refresh" content="2;url=booking.jsp">
</head>
<body>
  
    <!-- Welcome Message -->
    <div class="container welcome-message">
        <h1 class="display-4">Welcome, <%= session.getAttribute("userName") %>!</h1>
        <p class="lead">Thank you for logging in to ABC Restaurant's website. now you can reserve your table.</p>
        <p>You will be redirected to the booking page shortly...</p>
    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
