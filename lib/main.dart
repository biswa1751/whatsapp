import 'package:flutter/material.dart';
import 'package:whatsapp/home_page.dart';
import 'package:whatsapp/models/all_colors.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;
Future<void> main() async {
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Whatsapp',
      theme: new ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      home:  HomePage(
        cameras: cameras,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
