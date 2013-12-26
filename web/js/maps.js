/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/* Requete a sauvegarder : 
 * Pour latitude : 
 * for $var in doc('data/entries_hotels.xml') /entries/entry/latitude 
 * return data($var)
 * pour longitude :
 *for $var in doc('data/entries_hotels.xml') /entries/entry/longitude 
 * return data($var)
 */

var centre = new google.maps.LatLng(43.69, 7.27); // Correspond au coordonnées central

// Correspond aux coordonnées des hotels
var locations = [
    ['Hotel 1', 43.704, 7.2646],
    ['Hotel 2', 43.6799, 7.23056]
];

// Options de la maps
var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 12,
    center: centre,
    mapTypeControl: true,
    mapTypeControlOptions: {
        style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
    },
    navigationControl: true,
    navigationControlOptions: {
        style: google.maps.NavigationControlStyle.SMALL,
        position: google.maps.ControlPosition.TOP_RIGHT
    },
    scaleControl: true,
    streetViewControl: false,
    mapTypeId: google.maps.MapTypeId.HYBRID
});

var infowindow = new google.maps.InfoWindow();
var marker, i;

for (i = 0; i < locations.length; i++) {
    // Placer un point sur la carte
    marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map,
        title: locations[i][0]
        //icon: "marker.gif" // Chemin de l'image du marqueur
    });
    // Créer une info-bulle
    google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
            infowindow.setContent(locations[i][0]);
            infowindow.open(map, marker);
        };
    })(marker, i));
}