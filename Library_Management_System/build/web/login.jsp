<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            background-image: url("https://img.freepik.com/free-vector/library-with-bookcases-ladder-chair-lamp_107791-3023.jpg?t=st=1732987714~exp=1732991314~hmac=38a00b80ad61c27dc393d16679ffbdde213f7f1275ddf4ffa67f590eb63c2405&w=1060");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Arial', sans-serif;
            color: #fff;
        }

        /* Overlay for better contrast */
        .overlay {
            background-color: rgba(0, 0, 0, 0.6);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }

        /* Header Styles */
        .header {
            position: relative;
            text-align: center;
            padding: 20px 0;
            font-size: 36px;
            font-weight: bold;
            z-index: 2;
        }

        /* Login Container */
        .login-container {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            z-index: 2;
        }

        .login-form {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            width: 350px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .login-form h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .login-form input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .login-form button {
            width: 100%;
            background-color: #4da6ff;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-form button:hover {
            background-color: #3399ff;
        }

        .login-form a {
            color: #4da6ff;
            text-decoration: none;
            font-size: 14px;
            display: block;
            margin-top: 15px;
        }

        .login-form a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="login-container">
        <div class="header">Library Management System</div>
        <div class="login-form">
            <h2>Login</h2>
            <form action="login_success.jsp" method="post">
                <input type="text" placeholder="email" name="email"required>
                <input type="password" placeholder="Password"name="password" required>
                <button type="submit">Login</button>
                <a href="register.jsp">Create Account</a>
            </form>
        </div>
    </div>
</body>
</html>
