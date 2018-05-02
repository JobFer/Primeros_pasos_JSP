<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
// 	String[] productos = (String[])request.getAttribute("lista_Productos");
// 	System.out.println("productos[0]:" + productos[0]);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <c:forEach var="prod" items="${lista_Productos}">
            ${prod}<br/>
        </c:forEach>

        <br/><br/><br/>
		
    </body>
</html>
