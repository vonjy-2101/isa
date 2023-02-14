import 'package:flutter/material.dart';
import 'package:isa2/screens/layout.dart';
import 'package:isa2/screens/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        )
    );
  }
}
