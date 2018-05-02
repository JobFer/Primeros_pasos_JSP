<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Agencia Viajes</title>
    </head>
    <body>
        <form action="recibe_peticion.jsp">

            Selecciona tu ciudad de destino

            <select name="ciudad_favorita">

                <option>Madrid</option>
                <option>París</option>	
                <option>Nueva York</option>	
                <option>Sidney</option>

            </select>
            <br/><br/><br/>

            <input type="submit" value="Enviar"/>
        </form>

    </body>
</html>