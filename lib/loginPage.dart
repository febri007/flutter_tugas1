

import 'package:flutter/material.dart';
import 'package:flutter_tugas1/register_view.dart';
//import 'package:splash_screen/constants.dart';
//import 'package:splash_screen/screens/register_view.dart';

class LoginPage extends StatelessWidget{
  static const String routeName="/LoginPage";
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
                  _iconLogin(),
                  _deskripsi(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

Widget _iconLogin(){
  return Image.asset(
    "images/gambarr.jpg",
    width: 150.0,
    height: 150.0,
  );
}

Widget _deskripsi(){
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        "Login",
        style: TextStyle(
          color:Colors.blueGrey,
          fontSize: 16.0,
        ),
      ),
      Padding(padding: EdgeInsets.only(top :12.0),
      ),
      Text(
        "Silahkan Login!",
        style: TextStyle(
          fontSize: 10.0,
          color:Colors.blueGrey,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget _textField(){
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top:12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border:  UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width:1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
              width: 3.0,
            ),
          ),

          hintText: "Username",
          hintStyle: TextStyle(color: Colors.black26),

        ),

        style: TextStyle(color:Colors.black38),
        autofocus: false,
      ),
      Padding(padding: EdgeInsets.only(top:12.0),
      ),

      TextFormField(
        decoration: const InputDecoration(
          border:  UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width:1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
              width: 3.0,
            ),
          ),

          hintText: "Password",
          hintStyle: TextStyle(color: Colors.black26),

        ),

        style: TextStyle(color:Colors.black38),
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context){
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top:16.0),
      ),
      InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Login',
            style: TextStyle(color: Colors.black26),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(padding: EdgeInsets.only(top:16.0)),
      Text(
        'or',
        style: TextStyle(
          color: Colors.black26,
          fontSize: 12.0,
        ) ,
      ),
      FlatButton(
        child: Text(
          'Register',
          style:TextStyle(color:Colors.black26),
        ),
        onPressed: (){
          Navigator.pushReplacement(
            context,MaterialPageRoute(
              builder: (context)=>RegPage()),
          );
        } ,)
    ],
  );
}