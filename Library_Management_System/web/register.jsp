<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System - Signup</title>
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

        /* Signup Container */
        .signup-container {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            z-index: 2;
        }

        .signup-form {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            width: 350px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .signup-form h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .signup-form input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .signup-form button {
            width: 100%;
            background-color: #4da6ff;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .signup-form button:hover {
            background-color: #3399ff;
        }

        .signup-form a {
            color: #4da6ff;
            text-decoration: none;
            font-size: 14px;
            display: block;
            margin-top: 15px;
        }

        .signup-form a:hover {
            text-decoration: underline;
        }

        .success-message {
            text-align: center;
            padding: 20px;
            background-color: rgba(72, 239, 128, 0.9);
            border-radius: 10px;
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="signup-container">
        <div class="header">Library Management System</div>
        <div class="signup-form">
            <h2>Create Account</h2>
            <form method="post">
                <input type="text" placeholder="Username" name="username" required>
                <input type="email" placeholder="Email" name="email" required>
                <input type="date" placeholder="Date of Birth" name="dob" required>
                <input type="password" placeholder="Password" name="password" required>
                <button type="submit">Sign Up</button>
                <% 
                Connection conn = null;
                PreparedStatement pst = null;
                try {
                    String username = request.getParameter("username");
                    String email = request.getParameter("email");
                    String date = request.getParameter("dob");
                    String password = request.getParameter("password");

                    if (username != null && email != null && date != null && password != null) {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "123");

                        String sql = "INSERT INTO register (username, email, date1, password) VALUES (?, ?, ?, ?)";
                        pst = conn.prepareStatement(sql);
                        pst.setString(1, username);
                        pst.setString(2, email);
                        pst.setString(3, date);
                        pst.setString(4, password);

                        int rowsAffected = pst.executeUpdate();

                        if (rowsAffected > 0) {
                            out.println("<div class='success-message'>Sign Up Successful! Redirecting to home page...</div>");
                            RequestDispatcher rd = request.getRequestDispatcher("index.html");
                            rd.forward(request, response); // Forward to the home page
                        } else {
                            out.println("<h1>Error!</h1>");
                            out.println("<p>Unable to create account.</p>");
                        }
                    }
                } catch (Exception e) {
                    out.println("<h1>Error!</h1>");
                    out.println("<p>" + e.getMessage() + "</p>");
                } finally {
                    try {
                        if (pst != null) pst.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        out.println("<p>Resource closing error: " + e.getMessage() + "</p>");
                    }
                }
                %>
                <a href="login.jsp">Already have an account? Login</a>
            </form>
        </div>
    </div>
</body>
</html>
