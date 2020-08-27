import 'package:finder/pages/largest.dart';
import 'package:finder/pages/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Main());
}
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Finder"),
        ),
        body: Menu()
      ),
    );
  }
  }
