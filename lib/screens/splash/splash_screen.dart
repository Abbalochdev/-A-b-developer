// ignore_for_file: prefer_const_constructors

import 'package:app_demo/screens/splash/components/body.dart';
import 'package:app_demo/size_config.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // you have to call it on your starting screen
    Sizeconfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
