package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/ManageMenuServlet")
public class ManageMenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ManageMenuDAO menuDao = new ManageMenuDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String search = request.getParameter("search");
        String idParam = request.getParameter("id");

        if ("delete".equals(action) && idParam != null && !idParam.trim().isEmpty()) {
            int id = Integer.parseInt(idParam);
            boolean isDeleted = menuDao.deleteMenuItem(id);
            if (isDeleted) {
                response.sendRedirect("ManageMenuServlet");
            } else {
                request.setAttribute("errorMessage", "Failed to delete menu item.");
                List<Menu> menuList = menuDao.searchMenu(search != null ? search : "");
                request.setAttribute("menuList", menuList);
                request.getRequestDispatcher("manage_menu.jsp").forward(request, response);
            }
        } else if ("edit".equals(action) && idParam != null && !idParam.trim().isEmpty()) {
            int id = Integer.parseInt(idParam);
            Menu existingMenu = menuDao.getAllMenu().stream()
                    .filter(menu -> menu.getId() == id)
                    .findFirst()
                    .orElse(null);

            if (existingMenu != null) {
                request.setAttribute("menu", existingMenu);
                request.getRequestDispatcher("edit_menu.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Menu item not found.");
                List<Menu> menuList = menuDao.searchMenu(search != null ? search : "");
                request.setAttribute("menuList", menuList);
                request.getRequestDispatcher("manage_menu.jsp").forward(request, response);
            }
        } else {
            List<Menu> menuList = menuDao.searchMenu(search != null ? search : "");
            request.setAttribute("menuList", menuList);
            request.getRequestDispatcher("manage_menu.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("update".equals(action)) {
            updateMenu(request, response);
        } else {
            response.sendRedirect("ManageMenuServlet");
        }
    }

    private void updateMenu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String category = request.getParameter("category");

        Menu menu = new Menu(id, name, price, category);
        boolean isUpdated = menuDao.updateMenuItem(menu);

        if (isUpdated) {
            response.sendRedirect("ManageMenuServlet");
        } else {
            request.setAttribute("errorMessage", "Failed to update menu item.");
            request.setAttribute("menu", menu);
            try {
				request.getRequestDispatcher("edit_menu.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
    }
}
