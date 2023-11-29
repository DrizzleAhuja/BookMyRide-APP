<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ride Cancelled</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #fff;
            background-color: #ff3b30; /* Apple Red Background */
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        h1 {
            font-size: 48px;
            margin-bottom: 20px;
            text-align: center;
            color: #fff; /* Added white color for the heading */
        }

        .message {
            font-size: 24px;
            margin-bottom: 40px;
            text-align: center;
            color: #fff; /* Added white color for the message */
        }

        #goBackButton {
            padding: 15px 30px;
            font-size: 18px;
            color: #fff;
            background-color: #34a853; /* Green button color */
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none; /* Remove underline */
            transition: background-color 0.3s;
            display: inline-block; /* Align button horizontally with text */
        }

        #goBackButton:hover {
            background-color: #269b45; /* Darker green on hover */
        }
    </style>
</head>

<body>
    <h1>Ride Successfully Cancelled</h1>
    <p class="message">Your ride has been cancelled.</p>
    <a href="Home.jsp" id="goBackButton">Go to Home Page</a>
</body>

</html>
