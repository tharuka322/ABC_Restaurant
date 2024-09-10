package Bookings;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ViewBookingServlet")
public class ViewBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ViewBookingDAO viewBookingDAO;

    public void init() {
        viewBookingDAO = new ViewBookingDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String date = request.getParameter("date");
        String restaurant = request.getParameter("restaurant");

        if (date != null && !date.isEmpty() && restaurant != null && !restaurant.isEmpty()) {
            List<Booking> bookingList = viewBookingDAO.selectBookingsByDateAndRestaurant(date, restaurant);

            if (bookingList != null && !bookingList.isEmpty()) {
           
                request.setAttribute("bookingList", bookingList);
                request.setAttribute("errorMessage", null);
            } else {
    
                request.setAttribute("errorMessage", "No bookings found for the selected date and restaurant.");
                request.setAttribute("bookingList", null);
            }
        } else {

            request.setAttribute("errorMessage", "Please select both date and restaurant.");
            request.setAttribute("bookingList", null); 
        }


        RequestDispatcher dispatcher = request.getRequestDispatcher("ViewBooking.jsp");
        dispatcher.forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response); 
    }
}
