
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_tugas1/home_view.dart';





class HalamanSplashScreen extends StatefulWidget{

  @override
  _HalamanSplashScreenState createState() => _HalamanSplashScreenState();

}

class _HalamanSplashScreenState extends State<HalamanSplashScreen> {

  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var durasi = const Duration(seconds: 3);
    return Timer(durasi, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      backgroundColor: Colors.blueGrey[800],
      body: Center(child: Image.asset(
        "images/gambarr.jpg",
        width: 200.0,
        height: 200.0,
      ),
      ),
    );
  }
}
