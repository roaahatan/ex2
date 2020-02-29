import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:wasm';

import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(
        seconds: 5),

          () {

        Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context) => HomePage(),),);

      },

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepOrange),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        radius: 50.0,
                        child: Icon(
                          Icons.movie_creation,
                          color: Colors.white,

                          size: 90.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        '    The Movie data base \n'

                        , style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}