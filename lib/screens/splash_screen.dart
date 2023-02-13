import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isa2/screens/layout.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget
{
  SpashScreenState createState() => SpashScreenState();
}

class SpashScreenState extends State<SplashScreen>
{

  @override
  initState()  {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => Layout()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/isa.png",width: 40.w,),
          ],
        ),
      ),
    );
  }

}