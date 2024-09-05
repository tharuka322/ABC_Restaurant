package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StaffDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/abcrestaurant?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    private static final String INSERT_STAFF_SQL = "INSERT INTO staff (username, password, phone, name, role) VALUES (?, ?, ?, ?, ?);";

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

    // Register a new staff member
    public boolean registerStaff(Staff staff) {
        boolean result = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = getConnection();
            
            if (connection != null) {
                preparedStatement = connection.prepareStatement(INSERT_STAFF_SQL);
                preparedStatement.setString(1, staff.getUsername());
                preparedStatement.setString(2, staff.getPassword());
                preparedStatement.setString(3, staff.getPhone());
                preparedStatement.setString(4, staff.getName());
                preparedStatement.setString(5, staff.getRole());

                int affectedRows = preparedStatement.executeUpdate();
                if (affectedRows > 0) {
                    result = true;
                    System.out.println("Staff data inserted successfully");
                } else {
                    System.out.println("Staff data insertion failed");
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
