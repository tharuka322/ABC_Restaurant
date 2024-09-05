package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/AdminStaffviewServlet")
public class AdminStaffviewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StaffviewDAO staffDao = new StaffviewDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String username = request.getParameter("username");
        String search = request.getParameter("search");

        if ("delete".equals(action) && username != null && !username.trim().isEmpty()) {
            boolean isDeleted = staffDao.deleteStaff(username);
            if (isDeleted) {
                response.sendRedirect("AdminStaffviewServlet"); 
            } else {
                request.setAttribute("errorMessage", "Failed to delete staff member.");
                List<Staff> staffList = staffDao.getAllStaff(search != null ? search : "");
                request.setAttribute("staffList", staffList);
                request.getRequestDispatcher("admin_view_staff.jsp").forward(request, response);
            }
        } else {
            List<Staff> staffList = staffDao.getAllStaff(search != null ? search : "");
            request.setAttribute("staffList", staffList);
            request.getRequestDispatcher("admin_view_staff.jsp").forward(request, response);
        }
    }
}
