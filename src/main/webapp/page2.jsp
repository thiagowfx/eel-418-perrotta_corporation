<%@page import="com.thiagoperrotta.model.Money"%>
<%@page import="com.thiagoperrotta.model.Product"%>
<%@page import="com.thiagoperrotta.model.PerrottaInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Product PRODUCT = new Product(
            "Ultrabook Levelho Lazypad M42U",
            "Portátil. Leve. Ultrafino. Com o design e a qualidade que você já conhece.",
            new Money(2399.99),
            "assets/images/ultrabook.png"
    );
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" />
        <title><%= PerrottaInfo.getCorporationName()%> - Detalhes do Produto</title>
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/reset.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/text.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/unsemantic-grid-responsive-no-ie7.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <h1 class="title">Detalhes do Produto</h1>
        <br />
        <br />
        <div class="grid-container" style="text-align: center;">
            <form method="GET" action="controller">
                <input type="hidden" name="pagehandlerName" value="com.thiagoperrotta.pagehandler.Pagehandler_page2_jsp" />
                <div class="grid-50">
                    <img src="<%= PRODUCT.getImage()%>" />
                </div>
                <div class="grid-40 prefix-10">
                    <h2 class="subtitle"><%= PRODUCT.getName()%></h2>
                    <br />
                    <p class="description"><%= PRODUCT.getDescription()%></p>
                    QUANTIDADE: <input type="number" style="width: 60px;" name="PRODUCT_QUANTITY" />
                    <br />
                    <br />
                    <input type="submit" class="cancel" name="SUBMIT_BUTTON" value="VOLTAR"/>
                    <input type="submit" class="confirm" name="SUBMIT_BUTTON" value="COMPRAR"/>
                </div>
            </form>
        </div>
    </body>
</html>
