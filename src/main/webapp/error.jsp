<%@page import="com.thiagoperrotta.model.PerrottaInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" />
        <title><%= PerrottaInfo.getCorporationName()%> - Error Page</title>
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/reset.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/text.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/unsemantic-grid-responsive-no-ie7.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <form method="GET" action="controller">
            <h1 class="title">Error Page</h1>
            <center>
                <input type="hidden" name="pagehandlerName" value="com.thiagoperrotta.pagehandler.Pagehandler_error_jsp" />
                <div class="error">Exception: <% out.println(request.getAttribute("CONTROLLER_EXCEPTION"));%></div>
            </center>
            <center>
                <input type="submit" value="Voltar para a Página Inicial" />
                <input type="submit" onClick="window.history.back()" value="Voltar para a página anterior" />
            </center>
        </form>
    </body>
</html>
