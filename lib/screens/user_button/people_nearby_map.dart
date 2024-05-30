import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class PeopleNearbyMap extends StatelessWidget {
  const PeopleNearbyMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Люди поблизу'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(49.8397, 24.0297),
          zoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: const ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.app',
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PeopleNearbyMap(),
  ));
}
