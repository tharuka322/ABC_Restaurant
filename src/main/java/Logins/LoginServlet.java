package Logins;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDAO loginDAO;

    public void init() {
        loginDAO = new LoginDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Check if the username and password for 'admin staff login'
            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                // Redirect to admin staff login
                response.sendRedirect("admin_staff_login.jsp");
            } else {
         
                Logins.User user = loginDAO.validateUser(email, password);
                if (user != null) {
                 
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    session.setAttribute("userName", user.getName());

                    response.sendRedirect("welcome.jsp");
                } else {
       
                    request.setAttribute("errorMessage", "Invalid email or password.");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database error during login.");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
}
