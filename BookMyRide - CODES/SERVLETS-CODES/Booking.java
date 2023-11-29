package ewa;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Booking")
public class Booking extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String age = request.getParameter("age");
        String startPlace = request.getParameter("startPlace");
        String destination = request.getParameter("destination");
        String travelClass = request.getParameter("Class");
        String passengerCountStr = request.getParameter("passengerCount");
        PrintWriter out = response.getWriter();

        Connection con = null; // Declare Connection variable at a higher level

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book", "root", "Drizzle@123");
            		PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO bookings (full_name, age, start_place, destination, travel_class, passenger_count) VALUES (?, ?, ?, ?, ?, ?)");

            preparedStatement.setString(1, fullName);
            preparedStatement.setString(2, age);
            preparedStatement.setString(3, startPlace);
            preparedStatement.setString(4, destination);
            preparedStatement.setString(5, travelClass);
            preparedStatement.setString(6, passengerCountStr);
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                // Forward to Home.jsp upon successful registration
                RequestDispatcher dispatcher = request.getRequestDispatcher("BookingConfirmation.jsp");
                dispatcher.forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            out.println("<h2>Error in database connection or query: " + e.getMessage() + "</h2>");
            e.printStackTrace(); // Add this line to print the full stack trace to the console
        } finally {
            // Close resources in a finally block
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
