import 'dart:developer';

import 'package:assignment_14/services/helper.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String strLocation = "your location is: ";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(strLocation),
            ElevatedButton(
                onPressed: () async {
                  log("asdf");
                  Position location = await Geolocator.getCurrentPosition();
                  log("asasdfdf");
                  strLocation = "${location.latitude}, ${location.altitude}";
                  setState(() {});
                },
                child: Text("get location"))
          ],
        ),
      ),
    );
  }
}
