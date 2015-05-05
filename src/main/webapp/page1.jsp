<%@page import="com.thiagoperrotta.model.PerrottaInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= PerrottaInfo.getCorporationName() %> - Index dos Produtos</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
        <center>
        <h1>Perrotta Corporation</h1>
        <h2><i>Seu parceiro na Tecnologia da Informação</i></h2>
        </center>
        
            <input type="hidden"
                   name="pagehandlerName"
                   value="com.thiagoperrotta.pagehandler.pagehandler_pagina1_jsp" />

            <%
                ArrayList<String> products = new ArrayList<>();
                products.add("alfa");
                products.add("bravo");
                products.add("charlie");
            %>
            
            
            <% for(String product : products) { %>
                <form method="GET" action="controller">
                    <input type="hidden"
                           name="pagehandlerName"
                           value="com.thiagoperrotta.pagehandler.pagehandler_pagina2_jsp" />
                    
                    <li> <%= product %> <input type="submit" name="botaoSubmit" value="VOLTAR"/>
                    <br />
                </form>
            <% } %>
            
            <%--
            <h2>Valor em Reais (BRL):</h2>
                <%
                    String valor = (String)request.getAttribute("VALOR_EM_REAIS");
                    if(valor==null) valor = "";
                %>
                R$ <input type="text" size="30"
                          name="VALOR_EM_REAIS"
                          value="<%= valor %>"/>
            <input type="submit" name="botaoSubmit" value="ENVIAR"/>
            <%
                String erro = (String)request.getAttribute("MENSAGEM_DE_ERRO");
                if(erro==null) erro = "";
            %>
            <font color="red"><%= erro %></font>
            --%>
        
        </center>
    </body>
</html>
