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
                if(miResultSet.absolute(1)){
                    out.println(miResultSet.getString("apellido"));
                    out.println("Usuario autorizado");
                    
                    String apellido = miResultSet.getString("apellido");
                    System.out.println(apellido);

                    System.out.println("1-"+new String(apellido.getBytes("UTF-8")));
                    System.out.println("2-"+new String(apellido.getBytes("ISO-8859-1")));
                    System.out.println("3-"+new String(apellido.getBytes("UTF-16")));
                    System.out.println("4-"+new String(apellido.getBytes("US-ASCII")));
                    System.out.println("5-"+new String(apellido.getBytes("windows-1250")));
                    System.out.println("6-"+new String(apellido.getBytes("windows-1252")));                    
                }else
                    out.println("No hay usuarios con esos datos");

            }catch(Exception e){
                out.println("Ha habido un error");
            }
        %>

    </body>
</html>
