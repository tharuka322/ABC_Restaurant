package Bookings;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BookingDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/abcrestaurant?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    private static final String INSERT_BOOKINGS_SQL = "INSERT INTO bookings (name, email, date, time, numberOfPeople, restaurant, specialRequest) VALUES (?, ?, ?, ?, ?, ?, ?);";

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

    // Save booking to the database
    public boolean saveBooking(Booking booking) {
        boolean result = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = getConnection();
            if (connection != null) {
                preparedStatement = connection.prepareStatement(INSERT_BOOKINGS_SQL);
                preparedStatement.setString(1, booking.getName());
                preparedStatement.setString(2, booking.getEmail());
                preparedStatement.setString(3, booking.getDate());
                preparedStatement.setString(4, booking.getTime());
                preparedStatement.setInt(5, booking.getNumberOfPeople());
                preparedStatement.setString(6, booking.getRestaurant());
                preparedStatement.setString(7, booking.getSpecialRequest());

                int affectedRows = preparedStatement.executeUpdate();
                if (affectedRows > 0) {
                    result = true;
                    System.out.println("Booking inserted successfully");
                } else {
                    System.out.println("Booking insertion failed");
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
