import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class BookServlet extends HttpServlet 
{

    private static final String[][] books = 
    {
	{"javaCompleteReference", "/pdfs/javaCompleteReference.pdf"},
        {"cleanCode", "/pdfs/CleanCode.pdf"},
        {"javaPuzzlers", "/pdfs/JavaPuzzlers.pdf"},
        {"concurrencyInPractice", "/pdfs/JavaConcurrencyInPractice.pdf"},
       
	{"foundationsOfAstronomy", "/pdfs/FoundationsOfAstronomy.pdf"},               	
	{"universeInNutshell", "/pdfs/UniverseInNutshell.pdf"},
        {"originOfTime", "/pdfs/OriginOfTime.pdf"},
        {"hiddenReality", "/pdfs/HiddenReality.pdf"},


	{"paradoxOfChoice", "/pdfs/ParadoxOfChoice.pdf"},
	{"thinkingFastAndSlow", "/pdfs/ThinkingFastAndSlow.pdf"},
        {"predictablyIrrational", "/pdfs/PredictablyIrrational.pdf"},
        {"powerOfHabit", "/pdfs/PowerOfHabit.pdf"},   
    };

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String book = request.getParameter("book");

        String pdfPath = null;

        for (String[] bookEntry : books) 
        {
            if (bookEntry[0].equals(book))
            {
                pdfPath = bookEntry[1];
                break; // Stop the loop once a match is found
            }
        }

        if (pdfPath != null)
        {
            RequestDispatcher dispatcher = request.getRequestDispatcher(pdfPath);
            dispatcher.forward(request, response);
        } else 
        {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Book not found");
        }
    }
}
