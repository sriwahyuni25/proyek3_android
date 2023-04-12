import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sakitgi/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

@override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3), 
      () => Navigator.popAndPushNamed(context, '/sign-in'),
    );



    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body : Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image : AssetImage(
              'assets/image_splash.png',
            ),
          ),
        )
        ),
      )
    );
  }
}