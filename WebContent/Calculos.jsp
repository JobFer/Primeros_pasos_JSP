<%-- <%@page import="pildorasinformaticas.com.calculosmatematicos.*"%> --%>
<%@page import="pildorasinformaticas.com.calculosmatematicos.Calculos"%>
<html>
<body>

<!-- Forma 1 -->
El resultado de la suma de 5 y 7 es: 
<%=pildorasinformaticas.com.calculosmatematicos.Calculos.metodoSuma(5, 7) %> <br/>

<!-- Forma 2: Usando la DIRECTIVA IMPORT -->
El resultado de la suma de 5 y 7 es:
<%=Calculos.metodoSuma(5, 7) %> <br/>









<!-- Forma 3: Con metodo de instancia abreviada -->
El resultado de la suma de 6 y 8 es:
<%=new Calculos().metodoSuma2(6, 8) %> <br/>



<!-- Forma 4: Con metodo de instancia -->
El resultado de la suma (con método de instancia) de 7 y 9 es:
<% Calculos c = new Calculos(); %>
<%=c.metodoSuma2(7, 9) %> <br/>

<br/>
El resultado de la resta de 5 y 7 es: 
<%=pildorasinformaticas.com.calculosmatematicos.Calculos.metodoResta(7, 5) %> <br/>
<br/>
El resultado de la multiplicación de 5 y 7 es: 
<%=pildorasinformaticas.com.calculosmatematicos.Calculos.metodoMultiplica(5, 7) %> <br/>



</body>
</html>