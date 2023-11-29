<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book My Ride</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&display=swap">
    <style>
        body {
            font-family: "Quicksand", sans-serif;
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            background-image: url('background.jpeg');
            background-size: cover;
            background-position: center;
            color: #fff;
        }

        #formContent {
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            width: 90%;
            max-width: 450px;
            box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h2 {
            color: #333;
            font-size: 24px;
            font-weight: 600;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            margin-bottom: 5px;
            color: #333;
            text-transform: uppercase;
        }

        input,
        select {
            background-color: #f6f6f6;
            border: none;
            color: #0d0d0d;
            padding: 15px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 5px;
            width: 100%;
            border: 2px solid #f6f6f6;
            transition: all 0.5s ease-in-out;
            border-radius: 5px;
        }

        input:focus,
        select:focus {
            background-color: #fff;
            border-bottom: 2px solid #56baed;
        }

        input::placeholder {
            color: #999;
        }

        button {
            background-color: #56baed;
            border: none;
            color: white;
            padding: 15px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            text-transform: uppercase;
            font-size: 13px;
            box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
            border-radius: 5px;
            margin: 20px 0 40px;
            transition: background-color 0.3s ease-in-out;
            cursor: pointer;
        }

        button:hover {
            background-color: #39ace7;
        }

        *:focus {
            outline: none;
        }

        #icon {
            width: 60%;
        }

        /* Add underline to labels */
        label:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div id="formContent">
        <h2>Book Your Ride</h2>

        <form action="/ewa/Booking" method="post">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required>

            <label for="age">Age:</label>
            <input type="text" id="age" name="age" placeholder="Enter your age" required>

            <label for="startPlace">From:</label>
            <select id="startPlace" name="startPlace" required>
                <option value="NCU_to_SEC4">Northcap University</option>
                <option value="SEC23_to_NEWCOLONY">Sector-23</option>
                <option value="SEC7_to_HUDA">HUDA City Metro Station</option>
            </select>

            <label for="destination">To:</label>
            <select id="destination" name="destination" required>
                <option value="NCU_to_SEC4">Sector-4</option>
                <option value="SEC23_to_NEWCOLONY">New Colony</option>
                <option value="SEC7_to_HUDA">HUDA City Metro Station</option>
            </select>

            <label for="Class">Class:</label>
            <select id="Class" name="Class" required>
                <option value="economy">Normal</option>
                <option value="business">Luxury sedan</option>
                <option value="firstClass">MPV</option>
            </select>

            <label for="passengerCount">Number of Passengers:</label>
            <input type="number" id="passengerCount" name="passengerCount" min="1" placeholder="Enter the number of passengers" required>

            <button type="submit">Book Now</button>
        </form>
    </div>
</body>

</html>
