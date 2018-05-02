<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%@page import="java.sql.*" %>
        <%
            String usuario = request.getParameter("usuario");
            String contra = request.getParameter("contra");
            
            Class.forName("com.mysql.jdbc.Driver");
            try{
                Connection miConexion = DriverManager
                                .getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","123456789");

                String sql = "SELECT * FROM USUARIOS WHERE USUARIO = ? AND CONTRASENA = ?";
                PreparedStatement c_preparada = miConexion.prepareStatement(sql);
                c_preparada.setString(1, usuario);
                c_preparada.setString(2, contra);
                
                ResultSet miResultSet = c_preparada.executeQuery();
                
                if(miResultSet.absolute(1)){ //next()
                    out.println(miResultSet.getString("apellido"));
                    out.println("Usuario autorizado");
                    
//                     String apellido = miResultSet.getString("apellido");
//                     System.out.println(apellido);

                }else
                    out.println("No hay usuarios con esos datos");

            }catch(Exception e){
                out.println("Ha habido un error: " + e.getMessage());
            }
        %>

    </body>
</html>
