<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Successful</title>
    <style>
        /* Styles omitted for brevity */
    </style>
</head>
<body>
    <div class="container">
        <div class="icon">✔️</div>

        <%
        Connection conn = null;
        PreparedStatement pst = null;
        try {
            // Get parameters from form submission
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String message = request.getParameter("message");

            // Validate the data to ensure it's not null or empty
            if (name != null && !name.isEmpty() && email != null && !email.isEmpty() && message != null && !message.isEmpty()) {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "123");

                // Prepare the SQL insert statement
                String sql = "INSERT INTO feedback_user (name, email, message) VALUES (?, ?, ?)";
                pst = conn.prepareStatement(sql);
                pst.setString(1, name);
                pst.setString(2, email);
                pst.setString(3, message);

                // Execute the insert statement
                int rowsAffected = pst.executeUpdate();

                if (rowsAffected > 0) {
                    // Successfully inserted the data
                    out.println("<h1>Feedback Successful!</h1>");
                    out.println("<p>Thank you for your valuable feedback. We appreciate your time and effort to share your thoughts with us.</p>");
                } else {
                    out.println("<h1>Error!</h1>");
                    out.println("<p>There was an issue saving your feedback. Please try again.</p>");
                }
            } else {
                out.println("<h1>Error!</h1>");
                out.println("<p>Please ensure that all fields are filled out correctly.</p>");
            }

        } catch (Exception e) {
            out.println("<h1>Error!</h1>");
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            try {
                // Close database resources
                if (pst != null) pst.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                out.println("<p>Error closing resources: " + e.getMessage() + "</p>");
            }
        }
        %>

        <a href="index.html" class="back-btn">Back to Home</a>
    </div>
</body>
</html>
