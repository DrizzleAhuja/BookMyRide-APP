
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Confirmation</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4efef;
            text-align: center;
            margin: 0;
            padding: 0;
            color: #555;
        }

        .confirmation {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        h1, h2, h3 {
            color: #4caf50;
            font-size: 28px;
            margin-bottom: 15px;
        }

        h1 {
            font-size: 36px;
        }

        p {
            font-size: 16px;
            margin-bottom: 10px;
            color: #333;
        }

        /* Button styles */
        .check-data-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .check-data-button:hover {
            background-color: #45a049;
        }

        /* Links styles */
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
    </style>
</head>

<body>
    <div class="confirmation">
        <h1>Congratulations!</h1>
        <h3>Your payment was successful.</h3>
        <h2>RIDE SUCCESSFULLY BOOKED!! </h2>
        <a href="Home.jsp">Go to Home</a>
        <a href="Status.jsp">Go to Ride Status</a>
    </div>
</body>

</html>
