<html>
<body>

<h2>Objetos predefinidos JSP</h2>

El parámetro que me has enviado es:
<%=request.getParameter("nombre")%>
<br/>
Los datos del navegador desde donde me has realizado la petición:
<%=request.getHeader("User-Agent")%>
<br/>
El idioma del navegador desde donde me has realizado la petición:
<%=request.getLocale()%>


</body>
</html>