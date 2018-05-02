package es.pildorasinformaticas.servletpruebas;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(name = "RegistroUsuarios", urlPatterns = {"/RegistroUsuarios"})
@WebServlet("/RegistroUsuarios")
public class RegistroUsuarios extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
//    	response.setContentType("text/html;charset=UTF-8");
    	
    	
    	//El ejemplo del video
    	PrintWriter salida = response.getWriter();
    	salida.println("<html><body>");
    	salida.println("Nombre introducido " + request.getParameter("nombre"));
    	salida.println("<br><br>");
    	salida.println("Apellido introducido " + request.getParameter("apellido"));
    	salida.println("<br><br>");
    	salida.println("</body></html>");
    	
    	
    	/********************************************/
    	
//    	//Lo mismo pero con alguna modificacion simple
//        System.out.println("++++++++++++ doGet +++++++++++++++++");
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet RegistroUsuarios</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("Nombre: " + request.getParameter("nombre") + "<br/>");
//            out.println("Apellido: " + request.getParameter("apellido") + "<br/>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        doGet(request, response);
        
//    	//El ejemplo del video
//        response.setContentType("text/html");
//    	PrintWriter salida = response.getWriter();
//    	salida.println("<html><body>");
//    	salida.println("Nombre introducido " + request.getParameter("nombre"));
//    	salida.println("<br><br>");
//    	salida.println("Apellido introducido " + request.getParameter("apellido"));
//    	salida.println("<br><br>");
//    	salida.println("</body></html>");        
        
        /****************************************************/
        
//        System.out.println("++++++++++++ doPost +++++++++++++++++");
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet RegistroUsuarios</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("Nombre por POST: " + request.getParameter("nombre") + "<br/>");
//            out.println("Apellido por POST: " + request.getParameter("apellido") + "<br/>");
//            out.println("</body>");
//            out.println("</html>");
//        }        

    }
}
