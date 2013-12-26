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
        <link rel="shortcut icon" type="image/ico" href="" />
        <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="lib/jquery-svg/jquery.svg.css">
        <link rel="stylesheet" type="text/css" href="css/hotel.css">

        <title>SVG Hotel</title>
    </head>
    <style type="text/css">

    </style>
    <body>

        <div class="container">

            <div>
                <ul class="nav nav-pills pull-right">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="maps.html">Maps</a></li>
                    <li class="active"><a href="">SVG</a></li>
                </ul>
                <h3 class="muted">Project XML</h3>
            </div>

            <hr>

            <div id="svggraph" style="width: 1100px; height: 600px;" ></div>

            <hr>
            <div class="footer">
                <p>&copy; MIAGE 2013</p>
            </div>
        </div>
        <!-- Include Javascript -->


        <script type="text/javascript" src="lib/jquery-1.10.2.js"></script>

        <script type="text/javascript" src="lib/jquery-svg/jquery.svg.js"></script>
        <script type="text/javascript" src="lib/jquery-svg/jquery.svggraph.js"></script>

        <script type="text/javascript" charset="utf-8" language="javascript" src="js/graph.js"></script>
    </body>
</html>