<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
          <% 
                Connection conn = null;
                Statement st = null;
                ResultSet rs = null;
                String email1 = request.getParameter("email");
                String password1 = request.getParameter("password");
                try 
                {            
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "123");

                    st = conn.createStatement();
                    String sql = "SELECT email ,password FROM register"; 
                    rs = st.executeQuery(sql);
                     if(rs.next())
                    {
                        String email2 = rs.getString("email");
                        String password2 = rs.getString("password");
                        
                        if(email1.equals(email2)&&password1.equals(password2))
                        {
                            out.println("LOGIN SUCESSFUL" + "<br>"); 
                            String s1 = "INSERT INTO login (email, password) VALUES ('" + email1 + "', '" + password1 + "')";                         
                            Statement st1 = conn.createStatement();
                            st1.executeUpdate(s1);

                            
                            out.print("Redirecting to home page");
                            RequestDispatcher rd = request.getRequestDispatcher("index.html");
                            rd.forward(request, response);
                        }
                        else
                        {
                            out.print("EITHER EMAIL OR PASSWORD WORNG.\n TRY AGAIN !");
                            RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
                            rd1.forward(request, response);
                         }
                    }
                }
                
                catch (Exception e) 
                {
                    out.println("<h1>Error!</h1>");
                    out.println("<p>" + e.getMessage() + "</p>");
                }
                finally
                {
                    try 
                    {
                        if (st != null) st.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) 
                        {
                        out.println("<p>Resource closing error: " + e.getMessage() + "</p>");
                        }
                }
                %>
    </body>
</html>
