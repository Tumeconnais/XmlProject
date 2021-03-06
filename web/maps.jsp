<%-- 
    Document   : maps
    Created on : 19 déc. 2013, 13:31:10
    Author     : giuse_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.lang.String" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="shortcut icon" type="image/ico" href="css/hotel.jpg" />
        <link rel="stylesheet" type="text/css" href="css/template.css"/>
        <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/map.css">
        <title>Hotel Maps</title>
    </head>
    <style type="text/css">
        #map img {
            max-width: none;
        }
        div#infoBulle{
            width:200px;
            height:350px;
        }
        #cadre{position:relative;width:100%;margin:auto;}
        #cadre #map{width:100%;height:500px;margin:auto;}
    </style>
    <body>
        <div class="container">


            <div>
                <ul class="nav nav-pills pull-right">
                    <li><a href="index.html">Home</a></li>
                    <li  class="active"><a href="maps.html">Maps</a></li>
                    <li><a href="chart.html">SVG</a></li>
                </ul>
                <h3 class="text-muted">Project XML</h3>
            </div>

            <hr>

            <div id="cadre">
                <div id="map">
                    <p>Veuillez patienter pendant le chargement de la carte...</p>
                    <br /> 
                    <br />
                </div>
            </div>

            <br />
            
            <div class="footer">
                <p>&copy; MIAGE 2013</p>
            </div>
        </div>
        <!-- Include Javascript -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgfQp0OgUsZoCHHq5as2jCEWBDsJOYHWU&sensor=false"></script>
        <script type="text/javascript" charset="utf-8" language="javascript" src="lib/jquery-1.10.2.js"></script>
        <script type="text/javascript" src="js/maps.js"></script>
        <script language="javascript">
            var latitude = new Array();
            <% float[] latitudeJava = (float[]) session.getAttribute("latituderesult");

                for (int i = 0; i < latitudeJava.length; i++) {%>
            var tmp = '<%= latitudeJava[i]%>';           //--> without this doesnt work
            latitude[<%= i%>] = tmp;
            <%}
            %>

            var longitude = new Array();
            <% float[] longitudeJava = (float[]) session.getAttribute("longituderesult");

                for (int i = 0; i < longitudeJava.length; i++) {%>
            var tmp = '<%= longitudeJava[i]%>';           //--> without this doesnt work
            longitude[<%= i%>] = tmp;
            <%}
            %>


            var hotelInfo = new Array();
            <% String[] hotelInfoJava = (String[]) session.getAttribute("hotelinfo");
                for (int j = 0; j < hotelInfoJava.length; j++) {%>
            var tmp = "<%= hotelInfoJava[j]%>";           //--> without this doesnt work
            hotelInfo[<%= j%>] = tmp;

            <%}
            %>


            //Permet de lancer la map
            init(latitude, longitude, hotelInfo, 1);

        </script>


    </body>
</html>