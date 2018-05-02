<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>

        <h1 style="text-align: center">Agencia de viajes</h1>
        <%
            //Valor por defecto
            String ciudad_favorita = "Madrid";
        
            //Lee las cookies de la peticion del navegador
            Cookie[] lasCookies = request.getCookies();
            
            //Buscar las preferencias. La ciudad favorita
            if(lasCookies != null){
                for(Cookie cookie:lasCookies){
                	
                    if("agencia_viajes.ciudad_favorita".equals(cookie.getName())){
//                      //Recuperar la cookie, decodificandola primero 
                     	ciudad_favorita = URLDecoder.decode(cookie.getValue(), "ISO-8859-1");                        
                        break;
                    }
                }
            }
            %>
            
            <h3>Vuelos a <%=ciudad_favorita%></h3>
            
            <p>Esto es un texto de ejemplo</p>
            <p>Esto es un texto de ejemplo</p>
            <p>Esto es un texto de ejemplo</p>
            
            <h3>Hoteles en <%=ciudad_favorita%></h3>

            <p>Esto es un texto de ejemplo</p>
            <p>Esto es un texto de ejemplo</p>
            <p>Esto es un texto de ejemplo</p>
            
            <h3>Descuentos en restaurantes de <%=ciudad_favorita%></h3>
            
            <p>Esto es un texto de ejemplo</p>
            <p>Esto es un texto de ejemplo</p>
            <p>Esto es un texto de ejemplo</p>
            
    </body>
</html>
