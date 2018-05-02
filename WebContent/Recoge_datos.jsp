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
          
             
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection miConexion = java.sql.DriverManager
                            .getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","123456789");
//             System.out.println(con.getClass().getName());

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
