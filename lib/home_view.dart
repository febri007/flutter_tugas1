

import 'package:flutter/material.dart';
import 'package:flutter_tugas1/loginPage.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Text("\n\n"),

                  Image.asset(
                    "images/gambarr.jpg",
                    width: 200.0,
                    height: 200.0,
                  ),

                  Text("\nSelamat datang!!",
                    style: TextStyle(fontSize: 24, color: Colors.blueGrey[900]),
                    textAlign: TextAlign.center,),

                  Text("Ketuk tombol dibawah untuk login dan register\n",
                    style: TextStyle(color: Colors.grey, fontSize: 10),textAlign: TextAlign.center,),



                  FlatButton(

                    color: Colors.blueGrey[200],
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.push(
                        context,MaterialPageRoute(
                          builder: (context)=>LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }

}