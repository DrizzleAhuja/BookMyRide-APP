<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat with Rider</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-color: #f2f2f2;
        }

        .chat-container {
            max-width: 400px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
        }

        h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }

        p {
            margin-top: 20px;
            color: #28a745;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="chat-container">
        <h2>Chat with Rider</h2>

        <!-- Display the available messages -->
        <!-- Display the available messages -->
        <ul>
            <li><a href="MessageSent.jsp?message=I'm at the location">I'm at the location</a></li>
            <!-- Add other chat options as needed -->
             <li><a href="MessageSent.jsp?message=Please call me after you reach">Please call me after you reach</a></li>
            <li><a href="MessageSent.jsp?message=Please come fast">Please come fast</a></li>
            <li><a href="MessageSent.jsp?message=I'm looking for you">I'm looking for you</a></li>
        </ul>

        <!-- Display a message if a message is sent -->
        <p>${messageSent}</p>

    </div>
</body>
</html>