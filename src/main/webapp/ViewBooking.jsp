<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Bookings.Booking" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Bookings</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</head>
<body>
   
    <!-- Main Content -->
    <div class="container mt-5">
        <!-- Display Error Message -->
        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null && !errorMessage.isEmpty()) {
        %>
        <div class="alert alert-danger" role="alert">
            <%= errorMessage %>
        </div>
        <% 
            }
        %>

        <form method="get" action="ViewBookingServlet">
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="date" class="form-label">Select Date:</label>
                    <input type="date" id="date" name="date" class="form-control" required>
                </div>
                <div class="col-md-6">
                    <label for="restaurant" class="form-label">Select Restaurant:</label>
                    <select name="restaurant" id="restaurant" class="form-select" required>
                        <option value="" disabled selected>Select Restaurant</option>
                        <option value="Rathnapura">ABC Restaurant - Rathnapura</option>
                        <option value="Mathale">ABC Restaurant - Mathale</option>
                        <option value="Colombo">ABC Restaurant - Colombo</option>
                        <option value="Kurunegala">ABC Restaurant - Kurunegala</option>
                        <option value="Kandy">ABC Restaurant - Kandy</option>
                    </select>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">View Bookings</button>
        </form>

        <hr class="my-5">

        <div class="row">
            <% 
                List<Booking> bookingList = (List<Booking>) request.getAttribute("bookingList");
                if (bookingList != null && !bookingList.isEmpty()) {
                    for (Booking booking : bookingList) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><%= booking.getName() %></h5>
                        <p class="card-text">Email: <%= booking.getEmail() %></p>
                        <p class="card-text">Date: <%= booking.getDate() %></p>
                        <p class="card-text">Time: <%= booking.getTime() %></p>
                        <p class="card-text">No. of People: <%= booking.getNumberOfPeople() %></p>
                        <p class="card-text">Restaurant: <%= booking.getRestaurant() %></p>
                        <p class="card-text">Special Request: <%= booking.getSpecialRequest() %></p>
                        <a href="EditBookingServlet?id=<%= booking.getId() %>" class="btn btn-warning">Edit</a>
                        <a href="DeleteBookingServlet?id=<%= booking.getId() %>" class="btn btn-danger">Delete</a>
                    </div>
                </div>
            </div>
            <% 
                    }
                } else {
            %>
            <div class="col-12">
                <p class="text-center">No bookings available for the selected date and restaurant.</p>
            </div>
            <% 
                }
            %>
        </div>
    </div>

</body>
</html>
