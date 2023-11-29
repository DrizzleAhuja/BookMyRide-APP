<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book My Ride</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
  <style>
    html {
      background-color: #2C3E50;
    }

    body {
      font-family: 'Montserrat', sans-serif;
      margin: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      color: #ECF0F1;
    }

    h1 {
      line-height: 1.2;
      color: #66fcf1;
      font-weight: 700;
      font-size: 36px;
      text-transform: uppercase;
      margin-bottom: 20px;
    }

    .logo img {
      width: 300px;
      display: block;
      margin: 20px auto; /* Increased margin for better spacing */
      border-radius: 15px; /* Added a bit more border radius */
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Added a subtle box shadow */
    }

    .btn {
      margin: 20px auto;
      display: block;
      width: 200px;
      height: 50px;
      border: none;
      border-radius: 5px;
      background: #66fcf1;
      font-size: 16px;
      color: #2C3E50;
      letter-spacing: 0.1em;
      text-decoration: none; /* Remove underline */
      font-weight: 600;
      text-transform: uppercase;
      text-align: center;
      transition: background .4s, color .4s, transform .2s;
      cursor: pointer;
    }

    .btn:hover {
      background: #45A29E;
      transform: scale(1.05);
    }
  </style>
</head>

<body>
  <div>
    <h1>WELCOME TO BOOK MY RIDE</h1>
    <div class="logo">
      <img src="https://i.postimg.cc/YqCTnRwS/Logo.jpg" alt="Book My Ride Logo">
    </div>
    <div>
      <a href="Login1.jsp" style="text-decoration: none;">
        <button class="btn">Click Here To Continue</button>
      </a>
    </div>
  </div>
</body>

</html>
