import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'home.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Color(0xFFFC56C8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              // height: 250,
              // width: 250,
              child: Image.asset('assets/logo.png',scale: 1.9,),
            ),
          ),

          Shimmer.fromColors(
              baseColor: Colors.pink,
              highlightColor: Colors.orange,
              child: const Text("Let's play some sounds",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600), )),
        ],
      ),
    );
  }
}
