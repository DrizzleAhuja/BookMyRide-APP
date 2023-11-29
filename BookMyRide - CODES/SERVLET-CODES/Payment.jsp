
<!-- payment.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment</title>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Roboto:400,300,100');
/* Mixin */
.basic-styling {
	font-size: 14px;
	font-weight: 100;
	line-height: 14px;
}
.select-dropdown {
	width: 145px;
	margin-bottom: 20px;
	padding-left: 20px;
	border: 2px solid #e1e8ee;
	border-radius: 6px;
	background: url('https://designmodo.com/demo/creditcardform/caret.png')
		no-repeat;
	background-position: 85% 50%;
	-moz-appearance: none;
	-webkit-appearance: none;
}
input[type="text"], select {
	color: #86939e;
}

/* Style */
* {
	box-sizing: border-box;
}

body, html {
	height: 100%;
	min-height: 100%;
	font-family: 'Roboto', sans-serif;
	margin: 0;
	background-color: #e7e7e7;
}

.credit-card {
	width: 360px;
	height: 400px;
	margin: 60px auto 0;
	border: 1px solid #ddd;
	border-radius: 6px;
	background-color: #fff;
	box-shadow: 1px 2px 10px 0 rgba(0, 0, 0, .10);
}

.form-header {
	height: 60px;
	padding: 20px 30px 0;
	border-bottom: 1px solid #e1e8ee;
}

.form-body {
	height: 340px;
	padding: 30px;
}

h4.title {
	font-size: 18px;
	margin: 0;
	color: #5e6977;
	font-weight: 400;
}

/* Common */
.card-number, .cvv-input input, .month select, .year input { @extend
	.basic-styling;
	width: 100%;
	margin-bottom: 20px;
	padding-left: 20px;
	border: 2px solid #e1e8ee;
	border-radius: 6px;
}

/* Date Field */
.month select+.select-dropdown {
	float: left;
}

.year input+.select-dropdown {
	float: right;
}

/* CVV Field */
.cvv-input input {
	float: left;
	width: 145px;
	padding-left: 20px;
	border: 2px solid #e1e8ee;
	border-radius: 6px;
	background: #fff;
}

.cvv-details {
	width: 145px;
	font-size: 12px;
	font-weight: 300;
	line-height: 16px;
	float: right;
	margin-bottom: 20px;
}

.cvv-details p {
	margin-top: 6px;
}

/* Button */
.proceed-btn, .paypal-btn { @extend .basic-styling;
	margin-bottom: 10px;
	background: #7dc855;
	color: #fff;
	cursor: pointer;
	font-size: 16px;
	width: 100%;
	border: none;
	border-radius: 6px;
}

.paypal-btn {
	padding-right: 95px;
	background:
		url('https://designmodo.com/demo/creditcardform/paypal-logo.svg')
		no-repeat 65% 56% #009cde;
	color: rgba(242, 242, 242, .7);
}

a { @extend .basic-styling;
	text-decoration: none;
}
</style>
</head>
<body>
    <form class="credit-card" action="/BookMyRide/PaymentConfirm" method="post">
        <div class="form-header">
            <h4 class="title">Credit Card Details</h4>
        </div>

        <div class="form-body">
            <!-- Card Number -->
            <input type="text" name="card-number" placeholder="Card Number" class="card-number">

            <!-- Date Field -->
            <div class="date-field">
                <div class="month">
                    <select name="Month" class="select-dropdown">
                        <option>January</option>
                        <option>February</option>
                        <option>March</option>
                        <option>April</option>
                        <option>May</option>
                        <option>June</option>
                        <option>July</option>
                        <option>August</option>
                        <option>September</option>
                        <option>November</option>
                        <option>December</option>
                    </select>
                </div>
                <div class="year">
                    <input type="text" name="year" placeholder="Year" class="select-dropdown">
                </div>
            </div>

            <!-- Card Verification Field -->
            <div class="card-verification">
                <div class="cvv-input">
                    <input type="text" name="cvv" placeholder="CVV">
                </div>
                <div class="cvv-details">
                    <p>3 or 4 digits usually found on the signature strip</p>
                </div>
            </div>
            <a href ="PaymentConfirm.jsp">Proceed to payment</a>
        </div>
    </form>
</body>
</html>