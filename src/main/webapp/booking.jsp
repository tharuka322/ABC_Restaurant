<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant Booking</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
 
</head>
<body>
<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s" style="background-color: #343a40;">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10 bg-dark text-dark p-5 shadow-lg rounded">
            <h1 class="text-light mb-4 text-center">Book A Table Online</h1>
            <form action="BookingServlet" method="post">
                <div class="row g-3">
                    <div class="col-md-6">
                        <div class="form-floating">
                            <input type="text" name="name" class="form-control border border-primary" id="name" placeholder="Your Name" required>
                            <label for="name">Your Name</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-floating">
                            <input type="email" name="email" class="form-control border border-primary" id="email" placeholder="Your Email" required>
                            <label for="email">Your Email</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-floating">
                            <input type="date" name="date" class="form-control border border-primary" id="date" placeholder="Date" required>
                            <label for="date">Date</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-floating">
                            <input type="time" name="time" class="form-control border border-primary" id="time" placeholder="Time" required>
                            <label for="time">Time</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-floating">
                            <select name="numberOfPeople" class="form-select border border-primary" id="numberOfPeople" required>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                            </select>
                            <label for="numberOfPeople">No Of People</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-floating">
                            <select name="restaurant" class="form-select border border-primary" id="restaurant" required>
                                <option value="" disabled selected>Select Restaurant</option>
                                <option value="Rathnapura">ABC Restaurant - Rathnapura</option>
                                <option value="Mathale">ABC Restaurant - Mathale</option>
                                <option value="Colombo">ABC Restaurant - Colombo</option>
                                <option value="Kurunegala">ABC Restaurant - Kurunegala</option>
                                <option value="Kandy">ABC Restaurant - Kandy</option>
                            </select>
                            <label for="restaurant">Select Restaurant</label>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-floating">
                            <textarea name="specialRequest" class="form-control border border-primary" placeholder="Special Request" id="specialRequest" style="height: 100px"></textarea>
                            <label for="specialRequest">Special Request</label>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-primary w-100 py-3" type="submit">Book Now</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
