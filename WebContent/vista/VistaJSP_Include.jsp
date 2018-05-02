<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

        <%
        out.println("<br/><br/>Fecha y hora actual del JSP: " + new Date() + "<br/><br/>");
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <c:forEach var="prod" items="${lista_Productos}">
            ${prod}<br/>
        </c:forEach>
        
        <br/>Esto es lo que imprime el JSP


        <br/><br/>
		
    </body>
</html>
