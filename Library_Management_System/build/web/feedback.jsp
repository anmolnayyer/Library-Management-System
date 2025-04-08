<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            /* Add background image */
            background-image: url('https://img.freepik.com/free-vector/library-with-bookcases-ladder-chair-lamp_107791-3023.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
        header {
            background-color: rgba(0, 123, 255, 0.8); /* Make header semi-transparent */
            color: white;
            padding: 20px 10px;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 2rem;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8); /* Make container background semi-transparent */
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #007BFF;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        input, textarea, button {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1rem;
        }
        textarea {
            resize: vertical;
            min-height: 120px;
        }
        button {
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #007BFF;
            font-weight: bold;
            text-decoration: none;
        }
        .back-link:hover {
            color: #0056b3;
        }
        /* Icons Section */
        .icons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            gap: 20px;
        }
        .icon {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-decoration: none;
            color: #007BFF;
            transition: transform 0.3s ease, color 0.3s ease;
        }
        .icon:hover {
            transform: scale(1.1);
            color: #0056b3;
        }
        .icon img {
            width: 50px;
            height: 50px;
            margin-bottom: 8px;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            header h1 {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Feedback</h1>
    </header>
    <div class="container">
        <h2>We'd Love to Hear From You</h2>
        <form action="feed_success.jsp" method="post">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="Your Name" required>
   
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" placeholder="Your Email" required>

            <label for="message">Message</label>
            <textarea id="message" name="message" placeholder="Your Message or Query" required></textarea>
            
            <button type="submit">Submit</button>
        </form>
        
        <a href="index.html" class="back-link">Back to Home</a>
    </div>
</body>
</html>
