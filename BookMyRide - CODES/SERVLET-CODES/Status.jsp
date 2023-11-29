<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ride Status</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-image: url('https://i.postimg.cc/Px2BzXMS/background.jpg');
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

        .status-buttons {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .status-button {
            margin: 10px;
            padding: 15px;
            font-size: 18px;
            color: #fff;
            background-color: #3498db;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .status-button:hover {
            background-color: #2980b9;
        }

        .tip-button {
            margin: 5px;
            padding: 10px;
            font-size: 14px;
            color: #fff;
            background-color: #3498db;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .tip-button:hover {
            background-color: #2980b9;
        }

        .tip-buttons {
            display: flex;
            justify-content: center;
        }

        #add-tip-button {
            margin: 10px;
            padding: 15px;
            font-size: 18px;
            color: #fff;
            background-color: #3498db;
            border: none;
            border-radius: 8px;
            cursor: not-allowed;
        }
    a {
      color: #007bff;
            text-decoration: none;
            margin: 10px;
            font-size: 18px;
            display: inline-block;
        }

        a:hover {
            text-decoration: underline;
        }
        
       .home-status-link {
    display: inline-block;
    padding: 10px 20px;
    margin: 10px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
    font-weight: bold;
    border: 2px solid #007bff;
    border-radius: 5px;
    color: #007bff;
    background-color: #fff;
    transition: background-color 0.3s, color 0.3s, border-color 0.3s;
}

.home-status-link:hover {
      background-color: #001f3f; 
    color: #fff;
    border-color: #0056b3;
}
       
       
        
        
    </style>
</head>

<body>
    <h2>Ride Status</h2>

    <div class="status-buttons">
        <a href="RideStatus.jsp"><button class="status-button" type="submit">Ride Status</button></a>
        <a href="Cancel.jsp"><button class="status-button" type="submit">Cancel Ride</button></a>
        <a href="Chat.jsp?messageSent=${messageSent}"><button class="status-button" type="submit">Chat</button></a>

        <!-- Non-working "Add a tip" button -->
        <button id="add-tip-button" disabled>Add a Tip</button>

        <!-- Tip amount buttons -->
        <div class="tip-buttons">
            <button class="tip-button" onclick="addTip(20)">Give 20 Rupees</button>
            <button class="tip-button" onclick="addTip(40)">Give 40 Rupees</button>
            <button class="tip-button" onclick="addTip(60)">Give 60 Rupees</button>
            <button class="tip-button" onclick="addTip(80)">Give 80 Rupees</button>
        </div>
         <a href="Home.jsp" class="home-status-link">Go to Home</a>
    </div>

    <script>
        function addTip(amount) {
            // Redirect to TipConfirmation.jsp with the selected tip amount
            window.location.href = "TipConfirmation.jsp?tipAmount=" + amount;
        }
    </script>
</body>

</html>