
// Import required java libraries
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Main {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("Hello from main api");
    }
}