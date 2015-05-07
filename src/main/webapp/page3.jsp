<%@page import="com.thiagoperrotta.model.Money"%>
<%@page import="com.thiagoperrotta.model.Product"%>
<%@page import="com.thiagoperrotta.model.PerrottaInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Product PRODUCT = (Product) request.getAttribute("PRODUCT");
    if(PRODUCT == null) {
        throw new Exception("PRODUCT is null while trying to access page3.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" />
        <title><%= PerrottaInfo.getCorporationName()%> - Confirmação de Compra</title>
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/reset.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/text.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/unsemantic-grid-responsive-no-ie7.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <h1 class="title">Confirmação da Compra</h1>
        <br />
        <br />
        <div class="grid-container">
            <form method="GET" action="controller">
                <input type="hidden" name="pagehandlerName" value="com.thiagoperrotta.pagehandler.Pagehandler_page3_jsp" />
                <div class="grid-50">
                    <h2 class="subtitle"><%= PRODUCT.getName()%></h2>
                    <div class="grid-50">
                        <img src="<%= PRODUCT.getImage()%>" />
                    </div>
                </div>
                <div class="prefix-10 grid-20 suffix-20" style="text-align: center;">
                    <center>
                        <table class="bordered">
                            <tr>
                                <td>Quantidade</td>
                                <td>${param.QUANTITY}</td>
                            </tr>
                            <tr>
                                <td>Preço Unitário</td>
                                <td><%= PRODUCT.getPrice()%></td>
                            </tr>
                            <tr>
                                <td>Preço TOTAL</td>
                                <td><%= PRODUCT.getPrice().getTotalAmount(Integer.parseInt(request.getParameter("QUANTITY")))%></td>
                            </tr>
                        </table>
                    </center>
                    <br />
                    <br />
                    <button class="cancel" onClick="window.history.back()">VOLTAR</button>
                    <input type="submit" class="confirm" name="SUBMIT_BUTTON3" value="COMPRAR"/>
                </div>
            </form>
        </div>
    </body>
</html>
