<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.lang.reflect.Field"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String usuario = request.getParameter("usuario");
            String contra = request.getParameter("contra");
            String pais = request.getParameter("pais");
            String tecnologias = request.getParameter("tecnologias");
          
//            String test = "kukuřičné";
            System.out.println("1-"+new String(apellido.getBytes("UTF-8"))); 
            System.out.println("2-"+new String(apellido.getBytes("ISO-8859-1")));
            System.out.println("3-"+new String(apellido.getBytes("UTF-16")));
            System.out.println("4-"+new String(apellido.getBytes("US-ASCII")));
            System.out.println("5-"+new String(apellido.getBytes("windows-1250")));
            System.out.println("6-"+new String(apellido.getBytes("windows-1252")));
                    
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection miConexion = java.sql.DriverManager
                            .getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","123456789");
            java.sql.Statement miStatement = miConexion.createStatement();
            String instruccionSql = "INSERT INTO USUARIOS(Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) "
                                    + "VALUES ( "+
                                    "'"+nombre+"',"
                                    +"'"+apellido+"',"
                                    +"'"+usuario+"',"
                                    +"'"+contra+"',"
                                    +"'"+pais+"',"
                                    +"'"+tecnologias+"')";
            miStatement.executeUpdate(instruccionSql);
            
            System.out.println("instruccionSql: " + instruccionSql);
            
            out.println("Registrado con éxito");
        %>

    </body>
</html>
