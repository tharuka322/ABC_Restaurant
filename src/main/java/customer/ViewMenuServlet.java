package customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/ViewMenuServlet")
public class ViewMenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ManageMenuDAO menuDAO = new ManageMenuDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String category = request.getParameter("category");
        List<Menu> menuList = menuDAO.getMenuByCategory(category);
        request.setAttribute("menuList", menuList);
        request.getRequestDispatcher("menu.jsp").forward(request, response);
    }
}
