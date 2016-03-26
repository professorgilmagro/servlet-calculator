<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Página não encontrada</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="assets/images/calculator.png" />
        <link rel="stylesheet" type="text/css" href="assets/css/base.css">
        <link rel="stylesheet" type="text/css" href="assets/css/error.css">
    </head>
    <body>
        <div class="main">
             <div class="area-404">
                <h1>A página solicitada não foi encontrada!</h1>
                <a href="<%= request.getContextPath() %>/home">Voltar para home</a>
            </div>
        </div>
       
    </body>
</html>
