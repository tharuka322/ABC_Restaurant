package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/StaffServlet")
public class StaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        String role = request.getParameter("role");

        // Validate inputs
        if (username == null || username.trim().isEmpty() ||
            password == null || password.trim().isEmpty() ||
            phone == null || phone.trim().isEmpty() ||
            name == null || name.trim().isEmpty() ||
            role == null || role.trim().isEmpty()) {
            
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("admin_staff.jsp").forward(request, response);
            return;
        }


        Staff staff = new Staff(username, password, phone, name, role);

   
        StaffDAO staffDao = new StaffDAO();
        boolean isStaffRegistered = staffDao.registerStaff(staff);

        if (isStaffRegistered) {
            response.sendRedirect("admin_view_staff.jsp"); 
        } else {
            request.setAttribute("errorMessage", "Staff registration failed. Please try again.");
            request.getRequestDispatcher("admin_staff.jsp").forward(request, response);
        }
    }
}
