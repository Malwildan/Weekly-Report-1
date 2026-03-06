import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas1/screen/onboarding/onboarding1.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onboarding1(),),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 87, 169, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(height: 30,),
            Text('Basic Shop', style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 25, color: Color.fromARGB(255, 255, 255, 255),),),
            SizedBox(height: 10,),
            Text('Fullfill your daily needs', style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 16, color: Color.fromARGB(255, 255, 255, 255),),)
          ],      
        ),
      ),
    );
  }
}