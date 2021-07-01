import 'package:flutter/material.dart';

void main() {
  runApp(GoogleMeet());
}

class GoogleMeet extends StatelessWidget {
  const GoogleMeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
