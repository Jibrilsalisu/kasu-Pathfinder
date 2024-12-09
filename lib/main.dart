import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

void main() {
  runApp(KasuPathfinderApp());
}

class KasuPathfinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasu Pathfinder',
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late MapboxMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapboxMap(
        onMapCreated: _onMapCreated,
        styleString: "mapbox://styles/mapbox/streets-v11",
        initialCameraPosition: CameraPosition(
          target: LatLng(40.0, -74.5),
          zoom: 9,
        ),
      ),
    );
  }

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }
}