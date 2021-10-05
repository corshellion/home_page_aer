import 'dart:io';
import 'package:flutter/cupertino.dart';

import 'data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slide/splash_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}



