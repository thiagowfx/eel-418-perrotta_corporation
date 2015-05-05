<%@page import="com.thiagoperrotta.model.PerrottaInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= PerrottaInfo.getCorporationName() %> - Error Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <h1>Error Page</h1>
        <center>
            <form method="GET" action="controller">
            <b>Exception</b>: <% out.println(request.getAttribute("CONTROLLER_EXCEPTION")); %>
            <br/>
            <br/>
                <input type="hidden" name="pagehandlerName" value="com.thiagoperrotta.pagehandler.pagehandler_error_jsp" />
                <input type="submit" value="Voltar para a Página Inicial" />
            </form>
        </center>
    </body>
</html>
