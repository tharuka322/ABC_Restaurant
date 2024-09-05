package Bookings;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BookingDAO bookingDAO = new BookingDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        int numberOfPeople;
        try {
            numberOfPeople = Integer.parseInt(request.getParameter("numberOfPeople"));
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid number of people.");
            request.getRequestDispatcher("booking.jsp").forward(request, response);
            return;
        }
        String restaurant = request.getParameter("restaurant");
        String specialRequest = request.getParameter("specialRequest");

        Booking booking = new Booking();
        booking.setName(name);
        booking.setEmail(email);
        booking.setDate(date);
        booking.setTime(time);
        booking.setNumberOfPeople(numberOfPeople);
        booking.setRestaurant(restaurant);
        booking.setSpecialRequest(specialRequest);

        boolean isBookingSaved = bookingDAO.saveBooking(booking);
		if (isBookingSaved) {
		    response.sendRedirect("booking_success.jsp");
		} else {
		    request.setAttribute("errorMessage", "Booking failed. Please try again.");
		    request.getRequestDispatcher("booking.jsp").forward(request, response);
		}
    }
}
