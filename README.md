# BookMyRide App

BookMyRide is a Java-based web application developed using JSP, Java, Servlets, and JDBC. This application allows users to book rides, check ride status, give ratings, and learn more about the team behind the project.

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
3. [Requirements](#requirements)
4. [Installation](#installation)
5. [Usage](#usage)
6. [License](#license)

## Introduction
BookMyRide provides a user-friendly interface to book rides, check ride status, give ratings, and learn more about the team behind the project. It utilizes Java, JSP, Servlets, and JDBC for the backend, and MySQL for data storage.

## Features
1. **Login and New Login**
   - Users can log in with their username and password.
   - New users can create a new login by entering their details, which will be stored in the MySQL database.

2. **Homepage with Cookies**
   - After logging in, the homepage displays cookies with a personalized welcome message based on the user's login status.

3. **Booking Ride**
   - Users can book a ride by entering details such as name, age, destination, location, and the number of passengers.
   - Proceeding to payment and confirming the payment leads to a confirmation page.

4. **Check Ride Status**
   - Users can check the status of their ride.
   - Options include canceling the ride, chatting with the rider, sending messages to the rider, and giving tips to the rider.

5. **Give Rating**
   - Users can give a rating out of 5 stars for the app.

6. **About Us**
   - The "About Us" page provides information about the project and displays images and names of the people involved.

## Requirements
- Java
- JSP
- Servlets
- JDBC
- MySQL
- Web server (e.g., [Apache Tomcat](http://tomcat.apache.org/))

## Installation
1. Clone the repository.
   ```bash
   git clone https://github.com/yourusername/BookMyRide-APP.git
   
2. Set up the MySQL database with the required tables.

3. Deploy the application on a web server (e.g., Apache Tomcat).

## Usage
Navigate to the homepage after starting the server.

Log in or create a new login.

Explore the various features such as booking a ride, checking ride status, giving ratings, and learning about the team.

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
