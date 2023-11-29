<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            color: #333;
            background: linear-gradient(135deg, #f8f9fa, #dfe4ea);
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            text-align: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1,
        p {
            color: rgb(9, 9, 77);
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            text-decoration: none;
            border-bottom: 2px solid rgb(9, 9, 77);
            padding-bottom: 5px;
        }

        .team-member {
            margin-top: 30px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            justify-content: center;
            align-items: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
        }

        .team-member img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 50%;
            border: 4px solid #76b2f1;
            transition: transform 0.3s ease-in-out;
        }

        .team-member img:hover {
            transform: scale(1.1);
        }


        .team-member div {
            margin-top: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 10px;
            border-radius: 8px;
        }

        .team-member div:hover {
            background-color: #f2f2f2;
        }

        strong {
            color: #007bff;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1><U>TEAM MEMBERS</U></h1>


        <div class="team-member">
            <div>
                <img src="https://i.postimg.cc/pTHFYxd5/Yash.jpg" alt="Yash Sharma">
                <div>
                    <strong>YASH SHARMA</strong><br>
                    Roll No.: 22CSU295
                </div>
            </div>

            <div>
                <img src="https://i.postimg.cc/mkd1sHy7/Mohit.jpg" alt="Mohit Ghanghas">
                <div>
                    <strong>MOHIT GHANGHAS</strong><br>
                    Roll No.: 22CSU255
                </div>
            </div>

            <div>
                <img src="https://i.postimg.cc/Wp9dt00k/Adml.jpg" alt="Aditya Malhotra">
                <div>
                    <strong>ADITYA MALHOTRA</strong><br>
                    Roll No.: 22CSU297
                </div>
            </div>

            <div>
                <img src="https://i.postimg.cc/bwSD7dD2/Drizzle.jpg" alt="Drizzle Ahuja">
                <div>
                    <strong>DRIZZLE AHUJA</strong><br>
                    Roll No.: 22CSU299
                </div>
            </div>
        </div>
    </div>
</body>

</html>