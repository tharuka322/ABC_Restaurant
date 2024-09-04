package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/abcrestaurant?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    private static final String INSERT_USERS_SQL = "INSERT INTO users (name, email, phone, password) VALUES (?, ?, ?, ?);";

  
    protected Connection getConnection() {
        Connection connection = null;
        try {
         
            Class.forName("com.mysql.cj.jdbc.Driver");
     
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            if (connection != null) {
                System.out.println("Database connected successfully");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error connecting to database: " + e.getMessage());
            e.printStackTrace();
        }
        return connection;
    }

    // Register a new user
    public boolean registerUser(User user) {
        boolean result = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = getConnection();
            
            if (connection != null) {
                preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
                preparedStatement.setString(1, user.getName());
                preparedStatement.setString(2, user.getEmail());
                preparedStatement.setString(3, user.getPhone());
                preparedStatement.setString(4, user.getPassword());

                int affectedRows = preparedStatement.executeUpdate();
                if (affectedRows > 0) {
                    result = true;
                    System.out.println("Data inserted successfully");
                } else {
                    System.out.println("Data insertion failed");
                }
            } else {
                System.out.println("Connection is null. Unable to prepare statement.");
            }

        } catch (SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());
            e.printStackTrace();
        } finally {
        
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.out.println("Error closing resources: " + e.getMessage());
                e.printStackTrace();
            }
        }
        return result;
    }
}
