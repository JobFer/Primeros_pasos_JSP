<html>

<meta charset="UTF-8"/>

<body>

	<h2>Usuarios Registrados</h2>
	
	Usuario confirmado: <br><br>
    
    Nombre: <%=request.getParameter("nombre")%> &nbsp; 
    Apellido: <%=request.getParameter("apellido")%>

<br/><br/>
<jsp:include page="fecha.jsp" />

</body>
</html>
