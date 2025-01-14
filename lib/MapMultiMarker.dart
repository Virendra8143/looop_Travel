import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapMultiMarker extends StatefulWidget {
  const MapMultiMarker({super.key});

  @override
  State<MapMultiMarker> createState() => _MapMultiMarkerState();
}

class _MapMultiMarkerState extends State<MapMultiMarker> {
  final List<Map<String, dynamic>> clityList = const [
    {
      "address": "Jaipur the pink city",
      "id": "jaipur_01",
      "image":
      "https://i.pinimg.com/originals/b7/3a/13/b73a132e165978fa07c6abd2879b47a6.png",
      "lat": 26.922070,
      "lng": 75.778885,
      "name": "Jaipur India",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Jodhpur the blue city ",
      "id": "Jodhpur_02",
      "image":
      "https://upload.wikimedia.org/wikipedia/commons/9/96/Delhi_Red_fort.jpg",
      "lat":     26.75000000 ,
      "lng":  72.75000000,
      "name": "Jodhpur",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Jaisalmer the golden city ",
      "id": "jaisalmer_03",
      "image":
      "https://upload.wikimedia.org/wikipedia/commons/7/7e/Mumbai_Taj.JPG",
      "lat":  26.99382000 ,
      "lng": 71.00889000  ,
      "name": "Jaisalmer",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Udaipur the white city ",
      "id": "udaipur_04",
      "image":
      "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
      "lat": 24.571270,
      "lng": 73.691544,
      "name": "Udaipur City India",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Chittorgarh the mewar city ",
      "id": "chittor_5",
      "image":
      "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
      "lat": 24.879999,
      "lng": 74.629997,
      "name": "Chittorgarh",
      "phone": "7014333352",
      "region": "South Asia"
    },{
      "address": "Banswara the city of 100 island ",
      "id": "banswara_6",
      "image":
      "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
      "lat":    23.54109000 ,
      "lng":  74.44250000,
      "name": "Banswara",
      "phone": "7014333352",
      "region": "South Asia"
    }

  ];
  final Map<String, Marker> _markers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _markers.clear();
    setState(() {
      for (int i = 0; i < clityList.length; i++) {
        print("For Loop");
        final marker = Marker(
          markerId: MarkerId(clityList[i]['name']),
          position: LatLng(clityList[i]['lat'], clityList[i]['lng']),
          infoWindow: InfoWindow(
              title: clityList[i]['name'],
              snippet: clityList[i]['address'],
              onTap: () {
                print("${clityList[i]['lat']}, ${clityList[i]['lng']}");
                launchMap(clityList[i]['lat'],clityList[i]['lng']);
              }),
          onTap: () {
            print("Clicked on marker");
          },
        );
        print("${clityList[i]['lat']}, ${clityList[i]['lng']}");
        _markers[clityList[i]['name']] = marker;
      }
    });
  }
  launchMap(lat, long) {
    MapsLauncher.launchCoordinates(lat, long);
  }


  @override
  Widget build(BuildContext context) {
    return  GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(clityList[0]['lat'], clityList[0]['lng']),
        zoom: 4.8,
      ),
      markers: _markers.values.toSet(),
    );

  }}

