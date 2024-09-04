package Logins;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/abcrestaurant?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    private static final String VALIDATE_USER_SQL = "SELECT * FROM users WHERE email = ? AND password = ?";

    // Method to validate user credentials
    public User validateUser(String email, String password) throws SQLException {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(VALIDATE_USER_SQL)) {
            
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            if (resultSet.next()) {
                user = new User();
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setPhone(resultSet.getString("phone"));
                user.setPassword(resultSet.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // Method to establish a connection to the database
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            System.out.println("Database connected successfully");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error connecting to database.");
            e.printStackTrace();
        }
        return connection;
    }
}
