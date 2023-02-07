import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../models/place.dart';

class MapScreen extends StatefulWidget {
  final PlaceLocation initialLocation;

  const MapScreen({
    super.key,
    this.initialLocation = const PlaceLocation(
      latitude: 37.3860517,
      longitude: -122.083851,
    ),
  });

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecione...'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            widget.initialLocation.latitude,
            widget.initialLocation.latitude,
          ),
          zoom: 13,
        ),
      ),
    );
  }
}
