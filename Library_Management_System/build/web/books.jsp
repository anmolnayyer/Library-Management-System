<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Books</title>
    <style>
        /* Reset and Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            padding: 20px;
            background-image: url('https://img.freepik.com/free-vector/library-with-bookcases-ladder-chair-lamp_107791-3023.jpg');
            background-size: cover; /* Ensures the image covers the entire page */
            background-position: center;
            background-attachment: fixed; /* Makes the background fixed during scroll */
        }
        h1, h2 {
            text-align: center;
            margin-bottom: 20px;
            padding: 10px;
        }
        h1 {
            color: white;
            background-color: rgba(0, 123, 255, 0.8); /* Semi-transparent blue background */
            border-radius: 8px;
            margin-bottom: 40px;
            font-size: 2rem;
        }
        h2 {
            color: white;
            background-color: rgba(0, 123, 255, 0.8); /* Semi-transparent blue background */
            padding: 15px 30px;
            border-radius: 8px;
            margin: 30px auto;
            width: fit-content;
            max-width: 80%; /* Allows the box to extend slightly longer */
            font-size: 1.5rem;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }
        .category {
            margin-bottom: 40px;
        }
        .books-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            justify-content: center;
            align-items: start;
            padding: 20px;
        }
        .book-card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .book-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
        }
        .book-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }
        .book-card h3 {
            padding: 10px;
            background-color: #007BFF;
            color: white;
            text-align: center;
            font-size: 1.1rem;
        }
        .book-card p {
            padding: 10px;
            font-size: 0.9rem;
            color: #555;
            text-align: center;
        }
        .back-button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            text-align: center;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Explore Books</h1>
    
    <div class="category">
        <h2>Java</h2>
        <div class="books-grid">
            <div class="book-card">
                <img src="https://m.media-amazon.com/images/I/81UDSuaFAeL._SL1500_.jpg" alt="java 1">
                <h3>Java: The Complete Reference</h3>
                <p>Herbert Schildt , Dr. Coward, Danny</p>
		 <a href="BookServlet?book=javaCompleteReference " target='_blank' >Open PDF</a>

            </div>
            <div class="book-card">
                <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRbRLUinhu-QLFMg6QgzeIQxrQKgZeALZHTE1Mkrg4HSfzqb14W" alt="java 2">
                <h3>Clean Code</h3>
                <p>Robert C. Martin</p>
		<a href="BookServlet?book=cleanCode"target='_blank'>Open PDF</a>

            </div>
            <div class="book-card">
                <img src="http://t0.gstatic.com/images?q=tbn:ANd9GcTnMVNQPxjiGcU9CVYBDcKPNuzu_ihu7EJ9uKPbFzT0duGVvLvj" alt="java 3">
                <h3>Java Puzzlers</h3>
                <p>Joshua Bloch , Neal Gafter</p>
		<a href="BookServlet?book=javaPuzzlers"target='_blank'>Open PDF</a>

            </div>
            <div class="book-card">
                <img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRwzSdj3PWXMbxYwwYs-GS7okBww4BiOyvU8laLbA5TUNvBWLNN" alt="book 4">
                <h3>Java Concurrency in Practice</h3>
                <p>Joseph Bowbeer, Doug Lea, David Holmes</p>
		<a href="BookServlet?book=concurrencyInPractice"target='_blank'>Open PDF</a>

            </div>
        </div>
    </div>

    <div class="category">
        <h2>Astronomy</h2>
        <div class="books-grid">
            <div class="book-card">
                <img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQvuUMeG--X-kTDWDjvsWotf-XiegdJVtq6D5SBb98ms_iStvZAx16KaG0zbnHWUs0It-VEdEEB_PL-NlFUbl4YVfySX16-BXMq7gw6KIUP&usqp=CAE" alt="astro 1">
                <h3>Foundations of Astronomy</h3>
                <p>Dana Backman</p>
		<a href="BookServlet?book=foundationsOfAstronomy"target='_blank'>Open PDF</a>

            </div>
            <div class="book-card">
                <img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRhDDKmDhCFcg3Hvls9AY8WVxetHS0XHhAFt8pK83EkKWpnR8vQ" alt="astro 2">
                <h3>The Universe in a Nutshell</h3>
                <p>Stephen Hawking</p>
		<a href="BookServlet?book=universeInNutshell"target='_blank'>Open PDF</a>

            </div>
            <div class="book-card">
                <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQXy0CLcmDqB9bYjONg7Uo8dIrC1kUc5FRLxsu5riFgfdJdmNxL" alt="astro 3">
                <h3>On the Origin of Time: Stephen Hawking's Final Theory</h3>
                <p>Thomas Hertog</p>
		<a href="BookServlet?book=originOfTime"target='_blank'>Open PDF</a>

            </div>
            <div class="book-card">
                <img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1320431300i/8167094._SX120_.jpg" alt="astro 4">
                <h3>The Hidden Reality: Parallel Universes and the Deep Laws of the Cosmos</h3>
                <p>Brian Greene</p>
		<a href="BookServlet?book=hiddenReality"target='_blank'>Open PDF</a>

            </div>
        </div>
    </div>
    <div class="category">
        <h2>Psychology</h2>
        <div class="books-grid">
            <div class="book-card">
                <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTCQLP8QsH64EBALVtzrJMekCiOps0VFlGdwuvo-RMLAyfOPWEE" alt="ps 1">
                <h3>The Paradox of Choice: Why More Is Less, Revised Edition</h3>
                <p>Barry Schwartz</p>
		<a href="BookServlet?book=paradoxOfChoice"target='_blank'>Open PDF</a>

            </div>
            <div class="book-card">
                <img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSom7qFxq5BuGjKr8OWe_nCkLkvFq9s1Vxswdt7T9yKKBzMmLZX" alt="ps 2">
                <h3>Thinking, Fast and Slow</h3>
                <p>Daniel Kahneman</p>
		<a href="BookServlet?book=thinkingFastAndSlow"target='_blank'>Open PDF</a>

            </div>
            <div class="book-card">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQulgI3BjzKe8RNspl7x7devWt6tsnEH9zZ2mQR77SGvD80w9_k" alt="ps 3">
                <h3>Predictably Irrational: The Hidden Forces That Shape Our Decisions</h3>
                <p>Dan Ariely</p>
		<a href="BookServlet?book=predictablyIrrational"target='_blank'>Open PDF</a>

            </div>
            <div class="book-card">
                <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQSMbIYH0XAplz9_yBjp0OEnJffIgW-ZtqXp5bN8Qos3oWzhi-r" alt="ps 4">
                <h3>The Power of Habit: Why We Do What We Do in Life and Business</h3>
                <p>Charles Duhigg</p>
		<a href="BookServlet?book=powerOfHabit"target='_blank'>Open PDF</a>

            </div>
        </div>
    </div>

    <a href="index.html" class="back-button">Go Back to Home</a>
</body>
</html>
