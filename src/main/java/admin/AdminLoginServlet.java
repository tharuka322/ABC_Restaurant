package admin;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("adminUsername");
        String password = request.getParameter("adminPassword");


        String adminUsername = "admin";
        String adminPassword = "admin";

        if (adminUsername.equals(username) && adminPassword.equals(password)) {
            // redirect to admin home page
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("adminhome.jsp");
        } else {
            // Redirect back
            response.sendRedirect("admin_login.jsp?error=Invalid username or password");
        }
    }
}

