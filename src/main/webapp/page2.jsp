<%@page import="com.thiagoperrotta.model.PerrottaInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- <%@page import="br.ufrj.lpc.mvc_many_handlers_maven.modelo.ParMoedaValor"%> --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= PerrottaInfo.getCorporationName() %> - Detalhes do Produto</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <center>
        <h1 style="font-size:48px;">Detalhes do Produto</h1>
        <form method="GET" action="controller">
            <input type="hidden"
                   name="pagehandlerName"
                   value="com.thiagoperrotta.pagehandler.pagehandler_pagina2_jsp" />

            <h2>Produto</h2>
            <table border="0" style="border:2px solid black;border-collapse:collapse;">
                    <tr>
                        <td align="center" style="border:1px solid black;width:70px;border-collapse:collapse;">
                            <%= "Nome" %>
                        </td>
                        <td align="center" style="border:1px solid black;width:200px;border-collapse:collapse;">
                            <%= "Ultrabook Super" %>
                        </td>
                    </tr>
            </table>
            <br>    
            <br>    
            <input type="submit" name="botaoSubmit" value="VOLTAR"/>
        </form>
        </center>
    </body>
</html>
