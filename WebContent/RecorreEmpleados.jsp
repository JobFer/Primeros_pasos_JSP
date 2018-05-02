<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, java.sql.*, pildorasinformaticas.com.jsptags.*" %>

<%-- <%@ page errorPage="Errores.jsp" %> --%>
	 <%
	 	List<Empleado> datos = new ArrayList<>();
	 	
	 	//Conexion a la BD
	 	Class.forName("com.mysql.jdbc.Driver");
	 	try	{
	 		Connection miConexion = DriverManager.getConnection(
	 				"jdbc:mysql://localhost:3306/proyecto_jsp"
	 				,"root","123456789");
	 		Statement miStatement = miConexion.createStatement();
	 		String instruccionSql = "SELECT * FROM EMPLEADOS";
	 		ResultSet rs = miStatement.executeQuery(instruccionSql);
	 		
	 		while(rs.next()){
	 			datos.add(new Empleado(rs.getString(1), rs.getString(2),
	 							rs.getString(3), rs.getDouble(4)));
	 		}
	 		rs.close();
	 		miConexion.close();
	 		
	 	}catch(Exception e){
	 		System.out.println(e.getMessage());
	 	}
	 
	 	pageContext.setAttribute("losEmpleados", datos);
	 
	 %>
	 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="EmpTemp" items="${losEmpleados}">
		${EmpTemp.nombre} ${EmpTemp.apellido} ${EmpTemp.puesto} ${EmpTemp.salario} <br/>
	</c:forEach>

	<!-- /**************************************************/ -->

<!-- 	<table border="1"> -->
<!-- 	<tr><th>Nombre</th><th>Apellido</th><th>Puesto</th><th>Salario</th><th>Bonus</th></tr> -->
<%-- 	<c:forEach var="EmpTemp" items="${losEmpleados}"> --%>
<!-- 	<tr>  -->
<%-- 		<td>${EmpTemp.nombre}</td>  --%>
<%-- 		<td>${EmpTemp.apellido}</td>  --%>
<%-- 		<td>${EmpTemp.puesto}</td>  --%>
<%-- 		<td>${EmpTemp.salario}</td> --%>
<%-- 		<td><c:if test="${EmpTemp.salario<40000}">5000</c:if> --%>
<%-- 		    <c:if test="${EmpTemp.salario>=40000}">----------</c:if> --%>
<!-- 		</td> -->
<!-- 	</tr> -->
<%-- 	</c:forEach> --%>
<!-- 	</table> -->
	
<!-- 	<br/> -->

	<!-- /**************************************************/ -->

<!-- 	<table border="1"> -->
<!-- 	<tr><th>Nombre</th><th>Apellido</th><th>Puesto</th><th>Salario</th></tr> -->
<%-- 	<c:forEach var="EmpTemp" items="${losEmpleados}"> --%>
<!-- 	<tr>  -->
<%-- 		<td>${EmpTemp.nombre}</td>  --%>
<%-- 		<td>${EmpTemp.apellido}</td>  --%>
<%-- 		<td>${EmpTemp.puesto}</td>  --%>
<!-- 		<td> -->
<%-- 			<c:if test="${EmpTemp.salario<40000}"> --%>
<%-- 				${EmpTemp.salario + 5000} --%>
<%-- 			</c:if> --%>
<%-- 			<c:if test="${EmpTemp.salario>=40000}"> --%>
<%-- 				${EmpTemp.salario} --%>
<%-- 			</c:if> --%>
<!-- 		</td> -->
<!-- 	</tr> -->
<%-- 	</c:forEach> --%>
<!-- 	</table> -->
	
<!-- 	<br/> -->

	<!-- /**************************************************/ -->

<!-- 	Video 245 -->
<!--    -->
<!-- 	<table border="1"> -->
<!-- 	<tr><th>Nombre</th><th>Apellido</th><th>Puesto</th><th>Salario</th></tr> -->
<%-- 	<c:forEach var="EmpTemp" items="${losEmpleados}"> --%>
<!-- 	<tr>  -->
<%-- 		<td>${EmpTemp.nombre}</td>  --%>
<%-- 		<td>${EmpTemp.apellido}</td>  --%>
<%-- 		<td>${EmpTemp.puesto}</td>  --%>
<!-- 		<td> -->
<%-- 			<c:choose> --%>
<%-- 				<c:when test="${EmpTemp.salario < 40000 }"> --%>
<%-- 					${EmpTemp.salario + 5000 } --%>
<%-- 				</c:when> --%>
<%-- 				<c:when test="${EmpTemp.salario >= 40000 && EmpTemp.salario <= 50000 }"> --%>
<%-- 					${EmpTemp.salario + 2000 } --%>
<%-- 				</c:when> --%>
<%-- 				<c:otherwise> --%>
<%-- 					${EmpTemp.salario} --%>
<%-- 				</c:otherwise> --%>
<%-- 			</c:choose> --%>
<!-- 		</td> -->
<!-- 	</tr> -->
<%-- 	</c:forEach> --%>
<!-- 	</table> -->
		
</body>
</html>