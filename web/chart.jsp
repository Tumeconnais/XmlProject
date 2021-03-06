<%-- 
    Document   : maps
    Created on : 19 déc. 2013, 13:31:10
    Author     : MoMoGaGa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="shortcut icon" type="image/ico" href="css/hotel.jpg" />
        <link rel="stylesheet" type="text/css" href="css/template.css"/>
        <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/hotel.css">

        <title>Hotel Charts</title>
    </head>
    <style type="text/css">

    </style>
    <body>

        <div class="container">

            <div>
                <ul class="nav nav-pills pull-right">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="maps.html">Maps</a></li>
                    <li class="active"><a href="chart.html">SVG</a></li>
                </ul>
               <h3 class="text-muted">Nice's Hotel</h3>
            </div>

            <hr> 

            <div style="margin-top: 10px; font-size: 13px">
                <%=request.getAttribute("htmlresult")%>
            </div>
            <hr>
            <h4>Pourcentages des hotels par rapport aux étoiles</h4>
            <object type="image/svg+xml" data="pie.html"></object>
            <hr>
            <h4>Nombre de langues parlées</h4>
            <object type="image/svg+xml" data="bar.html"></object>
            <hr>
            <h4>Prix moyen des chambres</h4>
            <object type="image/svg+xml" data="line.html"></object>
            <br />
            <input class="form-control btn btn-primary" name="pdf" value="Télécharger en PDF" onclick="location = 'http://localhost:8080/XMLproject/ServletFOP'"/>
            <br />
            <div class="footer">
                <p>&copy; MIAGE 2013</p>
            </div>
        </div>
        <!-- Include Javascript -->


        <script type="text/javascript" src="lib/jquery-1.10.2.js"></script>


    </body>
</html>