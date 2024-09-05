package faqs;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FAQDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/abcrestaurant?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    private static final String INSERT_FAQ_SQL = "INSERT INTO faqs (name, email, phone, message) VALUES (?, ?, ?, ?);";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public boolean saveFAQ(FAQ faq) {
        boolean result = false;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_FAQ_SQL)) {

            preparedStatement.setString(1, faq.getName());
            preparedStatement.setString(2, faq.getEmail());
            preparedStatement.setString(3, faq.getPhone());
            preparedStatement.setString(4, faq.getMessage());

            int affectedRows = preparedStatement.executeUpdate();
            result = affectedRows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
