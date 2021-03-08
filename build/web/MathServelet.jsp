<%-- 
    Document   : MathServelet
    Created on : 08/03/2021, 12:15:37
    Author     : MARCOSESTEVAODASILVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        if (request.getParameter("enviar") == null) {

    %>
    <body>
        <form action="MathServelet.jsp" method="POST">
            <label for="fname">Numero 1:</label><br>
            <input type="number" id="numero1" name="numero1" min="0"><br>
            <label for="lname">Numero 2:</label><br>
            <input type="number" id="numero2" name="numero2" min="0"><br><br>
            <input  type="radio" name="operacao" id="operacao" value="soma" checked>
            <label  for="operacoes">Soma</label>
            <input  type="radio" name="operacao" id="operacao" value="subtracao">
            <label  for="operacoes">Subtração</label>
            <input  type="radio" name="operacao" id="operacao" value="multiplicacao">
            <label  for="operacoes">Multiplicação</label>
            <input  type="radio" name="operacao" id="operacao" value="divisao">
            <label  for="operacoes">Divisão</label>
            <br>
            <input type="submit" value="Enviar" name="enviar">
        </form> 
        <hr>
        <a href="index.html">Início</a>
        <a href="MarcosServelet.jsp">MarcosServelt</a>
        <%        } else {
            int numero01 = Integer.parseInt(request.getParameter("numero1"));
            int numero02 = Integer.parseInt(request.getParameter("numero2"));
            int resultado = 0;
            if (request.getParameter("operacao").equals("soma")) {
                resultado = numero01 + numero02;
            } else if (request.getParameter("operacao").equals("subtracao")) {
                resultado = numero01 - numero02;
            } else if (request.getParameter("operacao").equals("multiplicacao")) {
                resultado = numero01 * numero02;
            } else if (request.getParameter("operacao").equals("divisao")) {
                resultado = numero01 / numero02;
            }

        %>
        <label for="fname">Numero 1:</label><br>
        <input type="number" id="numero1" name="numero1" value="<%= numero01%>" disabled><br>
        <label for="lname">Numero 2:</label><br>
        <input type="number" id="numero2" name="numero2" value="<%= numero02%>" disabled><br><br>
        <label for="fname">Resultado:</label><br>
        <input type="number" id="resultado" name="resultado" value="<%= resultado%>" disabled><br>
        <hr>
        <a href="index.html">Início</a>
        <a href="MarcosServelet.jsp">MarcosServelt</a>
        <%
            }
        %>
    </body>
</html>
