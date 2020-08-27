import 'dart:io';

import 'package:finder/pages/even/odd.dart';
import 'package:finder/pages/largest.dart';
import 'package:finder/pages/smallest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 120.0,),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Large()));
                },
                child: Center(
                  child: Container(
                    width: 250.0,
                    height: 110.0,
                    child: Center(child: Text("Largest Digit")),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                          colors: [Colors.black26, Colors.lightGreen, Colors.blue]),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Small()));
              },
              child: Container(
                width: 250.0,
                height: 110.0,
                child: Center(child: Text("Smallest Digit")),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.blue,Colors.lightGreen,Colors.black26]),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EorO()));
              },
              child: Container(
                width: 250.0,
                height: 110.0,
                child: Center(child: Text("Even/Odd")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(colors: [Colors.black26,Colors.lightGreen,Colors.blue]),
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }
}
