package faqs;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/FAQServlet")
public class FAQServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FAQDAO faqDAO = new FAQDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        FAQ faq = new FAQ(name, email, phone, message);

        boolean isSaved = faqDAO.saveFAQ(faq);
        if (isSaved) {
            response.sendRedirect("faq_success.jsp");
        } else {
            request.setAttribute("errorMessage", "Failed to save your message. Please try again.");
            request.getRequestDispatcher("contact.jsp").forward(request, response);
        }
    }
}
