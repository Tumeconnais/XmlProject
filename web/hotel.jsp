<%-- 
    Document   : hotel
    Created on : 23 déc. 2013, 15:39:09
    Author     : Nicolas
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />

        <title>Hotel</title>

        <link rel="shortcut icon" type="image/ico" href="" />
        <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/hotel.css">
    </head>
    <body>
        <div class="container">

            <div>
                <ul class="nav nav-pills pull-right">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a href="maps.html">Maps</a></li>
                    <li><a href="#">SVG</a></li>
                </ul>
                <h3 class="muted">Project XML</h3>
            </div>

           
            <%=request.getAttribute("hotelresult")%>


            <div class="footer">
                <p>&copy; MIAGE 2013</p>
            </div>
        </div>

        <!-- Include Javascript -->
        <script type="text/javascript" charset="utf-8" language="javascript" src="lib/datatables/media/js/jquery.js"></script>
        <script type="text/javascript" charset="utf-8" language="javascript" src="lib/datatables/media/js/jquery.dataTables.js"></script>
        <script type="text/javascript" charset="utf-8" language="javascript" src="js/hotel.js"></script>
    </body>
</html>
