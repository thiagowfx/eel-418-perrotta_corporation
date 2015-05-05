<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC orientado a páginas, SEM tags</title>
    </head>
    
    <!-- ========================================= -->
    <!-- Exemplo feito SEM TAGS, só com scriplets. -->
    <!-- ========================================= -->
    
    <body>
        <center>
        <br>
        <br>
        <h1 style="font-size:48px;">Página 1 (sem tags)</h1>
        <br>
        <br>
        <form method="GET" action="controller">
            
            <input type="hidden"
                   name="nomeDoTratadorDePagina"
                   value="br.ufrj.lpc.mvc_many_handlers_maven.pagehandlers.Tratador_pagina1_jsp" />

            <h2>Valor em Reais (BRL):<br><br>
                <%
                    String valor = (String)request.getAttribute("VALOR_EM_REAIS");
                    if(valor==null) valor = "";
                %>
                R$ <input type="text" size="30"
                          name="VALOR_EM_REAIS"
                          value="<%= valor %>"/>
            <input type="submit" name="botaoSubmit" value="ENVIAR"/>
            <br>
            <br>
            <br>
            <br>
            <br>
            <%
                String erro = (String)request.getAttribute("MENSAGEM_DE_ERRO");
                if(erro==null) erro = "";
            %>
            <font color="red"><%= erro %></font>
            <br>
            </h2>
        </form>
        </center>
    </body>
</html>
