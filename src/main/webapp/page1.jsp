<%@page import="com.thiagoperrotta.model.Money"%>
<%@page import="com.thiagoperrotta.model.Money.Currency"%>
<%@page import="com.thiagoperrotta.model.Product"%>
<%@page import="com.thiagoperrotta.model.PerrottaInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Product> products = new ArrayList<>();

    products.add(new Product(
            "Ultrabook Levelho Lazypad M42U",
            "Portátil. Leve. Ultrafino. Com o design e a qualidade que você já conhece.",
            new Money(2399.99),
            "assets/images/ultrabook.png"
    ));

    products.add(new Product(
            "Tablet Universe T4",
            "Prático. Divertido. Agora com processador quad core e 20 gramas mais leve.",
            new Money(649.99, Currency.USD),
            "assets/images/tablet.png"
    ));

    products.add(new Product(
            "Smartphone Nezzuxx Azure J1",
            "O novo smartphone da linha Nezzuxx. Dessa vez, você vai se surpreender ainda mais.",
            new Money(949.99),
            "assets/images/smartphone.png"
    ));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" />
        <title><%= PerrottaInfo.getCorporationName()%> - Index dos Produtos</title>
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/reset.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/text.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/unsemantic-grid-responsive-no-ie7.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <h1 class="title"><%= PerrottaInfo.getCorporationName()%></h1>
    <h1 class="motto"><%= PerrottaInfo.getSlogan()%></h1>

    <div class="grid-container">
        <% for(int i = 0; i < products.size(); ++i) {
            Product product = products.get(i);
        %>
        <div class="grid-33" style="text-align: center;">
            <form method="GET" action="controller">
                <input type="hidden" name="pagehandlerName" value="com.thiagoperrotta.pagehandler.Pagehandler_page1_jsp" />
                <input type="hidden" name="PRODUCTS_INDEX" value="<%= i %>" />
                <div class="product-name"><%= product.getName()%></div>
                <div class="price"><%= product.getPrice()%></div>
                <br />
                <input type="image" src="<%= product.getImage()%>" height="200px"/>
                <br />
                <br />
                <input type="submit" name="SUBMIT_BUTTON1" value="COMPRAR"/>
            </form>
        </div>
        <% }%>
    </div>
</center>
</body>
</html>
