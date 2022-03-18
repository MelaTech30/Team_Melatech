// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:geolocation/geolocation.dart';

// class Locate extends StatefulWidget {
//   @override
//   State<Locate> createState() => _LocateState();
// }

// class _LocateState extends State<Locate> {
//   List<LocationResult> locations = [];
//   late StreamSubscription<LocationResult> streamSubscription;
//   bool trackLocation = false;

//   @override
//   initState() {    
//     super.initState();
//     checkGps();

//     trackLocation = false;
//     locations = [];
//   }

//   getLocattions() {
//     if (trackLocation) {
//       setState(() => trackLocation = false);
//       streamSubscription.cancel();
//       streamSubscription = null;
//     } else {
//       setState(() => trackLocation = true);

//       streamSubscription = Geolocation.locationUpdates(
//         accuracy: LocationAccuracy.best,
//         displacementFilter: 0.0,
//         inBackground: false,
//       ).listen((result) {
//         final location = result;
//         setState(() {
//           locations.add(location);
//         });
//       });

//       streamSubscription.onDone(() => setState(() {
//             trackLocation = false;
//           }));
//     }
//   }

//   checkGps() async {
//     final GeolocationResult result = await Geolocation.isLocationOperational();
//     if (result.isSuccessful) {
//       print("Success");
//     } else {
//       print("Failed");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
