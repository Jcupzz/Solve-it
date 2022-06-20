import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Detailed_View extends StatefulWidget {
  const Detailed_View({Key? key}) : super(key: key);

  @override
  State<Detailed_View> createState() => _Detailed_ViewState();
}

class _Detailed_ViewState extends State<Detailed_View> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Potholes at the middle of road",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/well.jpg",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Text(
                  "There are pothholes every where in the road. Authorities please take action as soon as possible",
                  style: TextStyle(fontSize: 20),
                ),
                Divider(
                  color: Colors.black,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
