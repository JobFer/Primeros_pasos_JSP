<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
		<c:set var="datos" value="Ana,López,Directora,75000"/>
        <c:set var="datosArray" value="${fn:split(datos,',')}"/>
        
        <input type="text" value="${datosArray[0]}"/><br/>
        <input type="text" value="${datosArray[1]}"/><br/>
        <input type="text" value="${datosArray[2]}"/><br/>
        <input type="text" value="${datosArray[3]}"/><br/>
<%--         Salario: <fmt:formatNumber type = "currency" value="${datosArray[3]}" /> --%>
        <br/>
        
<%--         <c:forEach var="alu" items="${datos}"> --%>
<%--             ${alu} <br/> --%>
<%--         </c:forEach> --%>
<!--         <br/> -->

<%--         <c:forEach var="alu" items="${datosArray}"> --%>
<%--             ${alu} <br/> --%>
<%--         </c:forEach> --%>
        
<!-- 	/**************************************************************/ -->        
        
<!--    ¿Cómo hacer que se creen automáticamente tantos "inputs" como elementos tenga el array? -->

<!-- 	/**************************************************************/ -->    

<!-- 	JOIN -->
<%-- 		<c:set var="cad" value="${fn:join(datosArray,'***')}"/> --%>
<%-- 		${cad} --%>

<!-- 	/**************************************************************/ -->     

<!--    El c:forEach. puede recorrer arrays, LIST, SET, y cadenas separadas por comas -->
<%--         <c:set var="datos" value="Ana,López,Directora,75000"/> --%>
<%--         <c:forEach var="alu" items="${datos}"> --%>
<%--             ${alu} <br/> --%>
<%--         </c:forEach> --%>

<!-- 	/**************************************************************/ -->

<!-- 	Todas las combinaciones posibles: -->
<!--    Crear un array (estos son LIST, SET y array, respectivamente) con c:set y recorrerlo con c:forEach -->
<%--    <c:set var="datos" value="${[1,2]}"/> --%>
<%--    <c:set var="datos" value="${['1','2']}"/> --%>
<%--    <c:set var="datos" value="${{1,2}}"/> --%>
<%--    <c:set var="datos" value="${fn:split('1,2',',')}"/> --%>
<%--    <c:forEach var="alu" items="${datos}"> --%>
<%--    		${alu} - ${alu+10} - <fmt:formatNumber type = "currency" value="${alu + 10}" /> <br/> --%>
<%--    		${alu} - ${alu.toString().concat("º elemento")} - <fmt:formatNumber type = "currency" value="${alu + 10}" /> <br/> --%>
<%--    		${alu} - ${"a".concat(alu)} - <fmt:formatNumber type = "currency" value="${alu + 10}" /> <br/> --%>
<%--    </c:forEach> --%>
        

        <%
//         //Todo lo anterior no es permitido en java, pero si en JSTL
//         String[] a = {"aaa","bbb"};
//         Integer[] a = {1,2};
//         String a = "aaa,bbb";
//         for(String x:a){
//         	out.println(x);
//         }
        %>
        
        
    </body>
</html>
