<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.ufrj.lpc.mvc_many_handlers_maven.modelo.ParMoedaValor"%>
<%@page import="br.ufrj.lpc.mvc_many_handlers_maven.modelo.FormatadorDeMoedas"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC orientado a páginas, SEM tags</title>
    </head>
    
    <body>
        <center>
        <br>
        <br>
        <h1 style="font-size:48px;">Página 2 (sem tags)</h1>
        <br>
        <br>
        <form method="GET" action="controller">
            <input type="hidden"
                   name="nomeDoTratadorDePagina"
                   value="br.ufrj.lpc.mvc_many_handlers_maven.pagehandlers.Tratador_pagina2_jsp" />
            
            <h2>Valores convertidos</h2>
            <br/>    
            <table border="0" style="border:2px solid black;border-collapse:collapse;">
                <%
                ArrayList<ParMoedaValor> listaDeRecords = (ArrayList<ParMoedaValor>)request.getAttribute("LISTA_DE_RECORDS");
                for(ParMoedaValor elemento : listaDeRecords){
                %>    
                    <tr>
                        <td align="center" style="border:1px solid black;width:70px;border-collapse:collapse;">
                            <%= elemento.getMoeda() %>
                        </td>
                        <td align="center" style="border:1px solid black;width:200px;border-collapse:collapse;">
                            <!-- Código colocado em outra classe (FormatadorDeMoedas) para não encher a página -->
                            <%= (new FormatadorDeMoedas()).formatar(elemento.getMoeda(), elemento.getValor()) %>
                        </td>
                    </tr>
                <% } %>
            </table>
            <br>    
            <br>    
            <input type="submit" name="botaoSubmit" value="VOLTAR"/>
        </form>
        </center>
    </body>
</html>
