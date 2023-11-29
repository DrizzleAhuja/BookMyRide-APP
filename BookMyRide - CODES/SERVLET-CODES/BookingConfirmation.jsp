<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Payment Confirmation</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700&display=swap">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f4efef;
            text-align: center;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .confirmation {
            max-width: 400px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #4caf50;
        }

        p {
            margin: 10px 0;
            font-size: 16px;
            color: #555;
        }

        strong {
            color: #007bff;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 15px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="confirmation">
        <h2>Booking Confirmation</h2>
        <p>Your details:</p>
        <p><strong>Full Name:</strong> <%= request.getParameter("fullName") %></p>
        <p><strong>Age:</strong> <%= request.getParameter("age") %></p>
        <p><strong>From:</strong> <%= request.getParameter("startPlace") %></p>
        <p><strong>Flight Class:</strong> <%= request.getParameter("Class") %></p>
        <p><strong>Number of Passengers:</strong> <%= request.getParameter("passengerCount") %></p>
        <a href="Payment.jsp">Proceed to payment</a>
    </div>
</body>
</html>
