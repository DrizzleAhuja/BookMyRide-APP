<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rating Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 20px;
            background-image: url('data:image/webp;base64,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');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
    height: 100vh; /* Set to 100% of the viewport height */  
        
        }
        

        h2 {
            color: white;
        }

        .stars {
            font-size: 60px;
            color: gold;
            cursor: pointer;
            display: inline-block;
        }

        .selected {
            color: orange;
        }

        #ratingMessage {
            font-size: 30px;
            color: white;
            margin-top: 20px;
        }

        #submitButton {
            background-color: #4CAF50;
            color: white;
            font-size: 24px;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
    </style>
    <script>
        let userRating = 0;

        function rateStars(rating) {
            // Remove the 'selected' class from all stars
            for (let i = 1; i <= 5; i++) {
                const star = document.getElementById('star' + i);
                star.classList.remove('selected');
            }

            // Add the 'selected' class to stars up to the selected rating
            for (let i = 1; i <= rating; i++) {
                const star = document.getElementById('star' + i);
                star.classList.add('selected');
            }

            // Update userRating
            userRating = rating;

            // Display the selected rating
            document.getElementById('ratingMessage').innerHTML = "You rated " + rating + " stars out of 5 for our app. Thanks for rating!";
        }

        function goToHome() {
            // Redirect to Home.jsp
            window.location.href = 'Home.jsp';
        }
    </script>
</head>
<body>
    <h2>Rate Our App</h2>
    
    <div>
        <!-- Star Rating -->
        <span id="star1" class="stars" onclick="rateStars(1)">★</span>
        <span id="star2" class="stars" onclick="rateStars(2)">★</span>
        <span id="star3" class="stars" onclick="rateStars(3)">★</span>
        <span id="star4" class="stars" onclick="rateStars(4)">★</span>
        <span id="star5" class="stars" onclick="rateStars(5)">★</span>
    </div>

    <div id="ratingMessage"></div>

    <!-- Submit Button -->
    <button id="submitButton" onclick="goToHome()">Go to Home</button>
</body>
</html>
