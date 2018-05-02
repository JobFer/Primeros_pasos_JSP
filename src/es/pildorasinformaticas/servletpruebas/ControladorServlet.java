package es.pildorasinformaticas.servletpruebas;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorServlet", urlPatterns = {"/ControladorServlet"})
public class ControladorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String[] productos = {"Destornillador", "Serrucho", "Tornillo", "Taladro", "Máquina"};
        request.setAttribute("lista_Productos", productos);
        
        RequestDispatcher miDispatcher = request.getRequestDispatcher("/vista/VistaJSP.jsp");
        miDispatcher.forward(request, response);
        
//        response.sendRedirect("vista/VistaJSP.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
