package es.pildorasinformaticas.servletpruebas;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorServlet_Include", urlPatterns = {"/ControladorServlet_Include"})
public class ControladorServlet_Include extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String[] productos = {"Destornillador", "Serrucho", "Tornillo", "Taladro", new String("Máquina".getBytes("UTF-8"))};
        request.setAttribute("lista_Productos", productos);
        
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println("Fecha y hora actual del servlet ----------1----------: " + new Date());
        
        
        RequestDispatcher miDispatcher = request.getRequestDispatcher("/vista/VistaJSP_Include.jsp");
//        miDispatcher.include(request, response);
        miDispatcher.forward(request, response);
        
        response.getWriter().println("Fecha y hora actual del servlet ----------2----------: " + new Date());
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
