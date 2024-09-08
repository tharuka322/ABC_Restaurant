package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/AddMenuServlet")
public class AddMenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MenuDAO menuDAO;

    public void init() {
        menuDAO = new MenuDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String category = request.getParameter("category");

        Menu menu = new Menu(name, Double.parseDouble(price), category);
        boolean isMenuAdded = menuDAO.addMenu(menu);

        if (isMenuAdded) {
            request.setAttribute("message", "Menu item added successfully!");
        } else {
            request.setAttribute("message", "Failed to add menu item. Please try again.");
        }

        request.getRequestDispatcher("add_menu.jsp").forward(request, response);
    }
}
