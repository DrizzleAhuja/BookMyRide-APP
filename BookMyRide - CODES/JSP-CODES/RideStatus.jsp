<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Ride Status</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        #details {
            border: 1px solid #ddd;
            padding: 20px;
            background-color: #fff;
            margin: 20px auto;
            width: 70%;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        #details p {
            margin: 10px 0;
        }

        #timer-container {
            margin-top: 20px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            width: 70%;
            margin: 20px auto;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #timer {
            font-size: 24px;
            color: #d9534f;
        }

        #proceedBtn {
            display: inline-block;
            margin-top: 20px;
            padding: 15px 20px;
            background-color: #5bc0de;
            color: #fff;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        #proceedBtn:hover {
            background-color: #46b8da;
        }
    </style>
    <script>
        // Timer functionality
        function startTimer(duration, display) {
            var timer = duration, minutes, seconds;
            setInterval(function () {
                minutes = parseInt(timer / 60, 10);
                seconds = parseInt(timer % 60, 10);

                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;

                display.textContent = minutes + ":" + seconds;

                if (--timer < 0) {
                    timer = duration;
                }
            }, 1000);
        }

        window.onload = function () {
            var duration = 300; // 5 minutes in seconds
            var display = document.querySelector('#timer');
            startTimer(duration, display);
        };
    </script>
</head>
<body>
    <h2>Ride Status</h2>

    <div id="details">
        <p><strong>Full Name:</strong> <%= request.getParameter("fullName") %></p>
        <p><strong>Age:</strong> <%= request.getParameter("age") %></p>
        <p><strong>From:</strong> <%= request.getParameter("startPlace") %></p>
        <p><strong>Flight Class:</strong> <%= request.getParameter("Class") %></p>
        <p><strong>Number of Passengers:</strong> <%= request.getParameter("passengerCount") %></p>
    </div>

    
        <p id="timer"><strong>Time remaining for rider arrival: </strong></p>
   

    <a id="proceedBtn" href="Cancel.jsp">Cancel Ride</a>
</body>
</html>
