package es.pildorasinformaticas.servletpruebas;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

@WebServlet("/HolaMundo")
public class PrimerServlet extends HttpServlet {
        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
//    	System.out.println(response.getClass().getName());
//    	System.out.println(request.getClass().getName());
    	
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
//        	String x = request.getParameter("nombre");
//        	out.println("Nombre: " + x);
        	
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PrimerServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1 style='text-align:center'>Prueba Servlet</h1>");
            out.println("<br/><br/><br/><br/>");
            out.println("Fecha y hora actual: " + new Date());
            out.println("</body>");
            out.println("</html>");
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}
