<html>
<body>

<h2>Objetos predefinidos JSP</h2>

El par�metro que me has enviado es:
<%=request.getParameter("nombre")%>
<br/>
Los datos del navegador desde donde me has realizado la petici�n:
<%=request.getHeader("User-Agent")%>
<br/>
El idioma del navegador desde donde me has realizado la petici�n:
<%=request.getLocale()%>


</body>
</html>