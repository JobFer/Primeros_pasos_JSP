<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
//     String alumnos[] = {"Antonio", "Sandra", "María", "Paco"};
// 	pageContext.setAttribute("losAlumnos", alumnos);
%>
<!-- Otra forma de hacer lo mismo que esa ultima linea, pero sin SCRIPTLET. Con JSTL TAGS -->
<%-- 	<c:set var="losAlumnos" value="<%=alumnos%>"/> --%>

<!-- Y otra forma, sin nada de JAVA -->
	<c:set var="losAlumnos" value="Antonio, Sandra, María, Paco"/>
	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<!--    Forma 1: Sin JSP TAGS -->
        <%--
            for(String alu:alumnos){
                out.println(alu + "<br/>");
            }
        --%>
        
        
<!--    Forma 2: Con JSP(JSTL) TAGS -->  
        <c:forEach var="alu" items="${losAlumnos }">
            ${alu} <br/>
        </c:forEach>
      
    </body> 
</html>
