<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>

<%
    //Leyendo datos del formulario
    String ciudad_favorita = request.getParameter("ciudad_favorita");

	//Crear la cookie
    Cookie laCookie = new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita);
    
    //Vida de la cookie
    laCookie.setMaxAge(365*24*60*60);
    
     //Enviar a usuario
    response.addCookie(laCookie);
            
%>
    Gracias por enviar tus preferencias.
    <a href="agencia_viajes.jsp" >Ir a la Agencia de Viajes</a>
    </body>
</html>
