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
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bmr4", "root", "Drizzle@123");

            PreparedStatement preparedStatement = con.prepareStatement(
                    "INSERT INTO users (username, password) VALUES (?, ?)");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                // Set a cookie with the username after successful registration
                Cookie usernameCookie = new Cookie("username", username);
                response.addCookie(usernameCookie);
                // Forward to Home.jsp upon successful registration
                RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
                dispatcher.forward(request, response);
            } else {
                out.println("<a href=signup.jsp><h2>Registration failed. Please try again.</h2> </a>");
            }
        } catch (SQLException | ClassNotFoundException e) {
            out.println("<h2>Error in database connection or query.</h2>");
            e.printStackTrace();
        }
    }
}
