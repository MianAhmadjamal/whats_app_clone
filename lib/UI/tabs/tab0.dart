// ignore_for_file: prefer_const_constructors

import 'package:chat_application/UI/Camera/camera.dart';
import 'package:flutter/material.dart';

class Tab0 extends StatefulWidget {
  const Tab0({Key? key}) : super(key: key);

  @override
  State<Tab0> createState() => _Tab0State();
}

class _Tab0State extends State<Tab0> {
  @override
  Widget build(BuildContext context) {
    return CameraScreen();
  }
}
