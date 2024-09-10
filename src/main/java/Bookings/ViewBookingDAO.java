package Bookings;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ViewBookingDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/abcrestaurant?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    private static final String SELECT_BOOKINGS_BY_DATE_AND_RESTAURANT = "SELECT * FROM bookings WHERE date = ? AND restaurant = ?;";
    private static final String DELETE_BOOKING_SQL = "DELETE FROM bookings WHERE id = ?;";
    private static final String UPDATE_BOOKING_SQL = "UPDATE bookings SET name = ?, email = ?, date = ?, time = ?, numberOfPeople = ?, restaurant = ?, specialRequest = ? WHERE id = ?;";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<Booking> selectBookingsByDateAndRestaurant(String date, String restaurant) {
        List<Booking> bookings = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOKINGS_BY_DATE_AND_RESTAURANT)) {
            preparedStatement.setString(1, date);
            preparedStatement.setString(2, restaurant);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                Booking booking = new Booking(rs.getInt("id"), rs.getString("name"), rs.getString("email"),
                        rs.getString("date"), rs.getString("time"), rs.getInt("numberOfPeople"),
                        rs.getString("restaurant"), rs.getString("specialRequest"));
                bookings.add(booking);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }

    public boolean deleteBooking(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_BOOKING_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateBooking(Booking booking) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_BOOKING_SQL)) {
            statement.setString(1, booking.getName());
            statement.setString(2, booking.getEmail());
            statement.setString(3, booking.getDate());
            statement.setString(4, booking.getTime());
            statement.setInt(5, booking.getNumberOfPeople());
            statement.setString(6, booking.getRestaurant());
            statement.setString(7, booking.getSpecialRequest());
            statement.setInt(8, booking.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
