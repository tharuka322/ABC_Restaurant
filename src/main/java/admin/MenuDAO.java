package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MenuDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/abcrestaurant?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    private static final String INSERT_MENU_SQL = "INSERT INTO menu (name, price, category) VALUES (?, ?, ?);";

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

    public boolean addMenu(Menu menu) {
        boolean result = false;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_MENU_SQL)) {

            preparedStatement.setString(1, menu.getName());
            preparedStatement.setDouble(2, menu.getPrice());
            preparedStatement.setString(3, menu.getCategory());

            int affectedRows = preparedStatement.executeUpdate();
            result = affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
