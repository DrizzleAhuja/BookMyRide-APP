<%@ page import="java.net.URLDecoder" %>
<%@ page import="jakarta.servlet.http.Cookie" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book My Ride</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #fff;
            background-image: url('https://i.postimg.cc/y8grgh5p/Whats-App-Image-2023-11-23-at-18-59-04-20d57f76.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        h2 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .feature-links {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        .feature-link {
            text-decoration: none;
            color: #333;
            background-color: #fff;
            padding: 20px;
            margin: 10px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease-in-out;
            display: flex;
            flex-direction: column;
            align-items: center;
            max-width: 200px;
            text-align: center;
        }

        .feature-link:hover {
            transform: scale(1.1);
        }

        img {
            margin-bottom: 10px;
            max-width: 100%;
            border-radius: 8px;
        }
    </style>
</head>

<body>
    <div class="welcome-container">
    <%
        Cookie[] cookies = request.getCookies();
        String username = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    username = URLDecoder.decode(cookie.getValue(), "UTF-8");
                    break;
                }
            }
        }
        // Check if username is not null and not empty
        if (username != null && !username.isEmpty()) {
    %>
    <h2>Welcome, <%= username %>!</h2>
    <%
        } else {
    %>
    <h2>Welcome, Guest!</h2>
    <%
        }
    %>
    
</div>
    

    <h2>SELECT AN OPTION BELOW</h2>

    <div class="feature-links">
        <a href="Booking.jsp" class="feature-link">
            <img src="https://i.postimg.cc/MT2kK3pY/booking.jpg" alt="" width="140">
            <br>Book a Ride
        </a>
        <a href="Status.jsp" class="feature-link">
            <img src="https://i.postimg.cc/JhXgg35H/status.jpg" alt="" width="100">
            <br>Check Ride Status
        </a>
        <a href="Rating.jsp" class="feature-link">
            <img src="data:image/png;base64,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" alt="" width="120">
            <br>Rate Our App
        </a>
        <a href="AboutUs.jsp" class="feature-link">
            <img src="https://i.postimg.cc/c1cq0myQ/About-us.png" alt="" width="120">
            <br>About us
        </a>
    </div>
</body>

</html>

