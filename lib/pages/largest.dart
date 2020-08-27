import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Large extends StatelessWidget {
  TextEditingController fname = TextEditingController();
  TextEditingController sname = TextEditingController();
  TextEditingController tname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("Largest one"),
       ),
       body: Container(
         padding: EdgeInsets.all(20.0),
         child: Column(
           children: [
             SizedBox(height: 20.0,),
             TextField(
               controller: fname,
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.create),
                 hintText: "Enter number",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20.0),
                 ),
               ),
             ),
             SizedBox(height: 20.0,),
             TextField(
               controller: sname,
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.create),
                 hintText: "Enter number",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20.0),
                 ),
               ),
             ),
             SizedBox(height: 20.0,),
             TextField(
               controller: tname,
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.create),
                 hintText: "Enter number",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20.0),
                 )
               ),
             ),
             SizedBox(height: 20.0,),
             GestureDetector(
               onTap: (){
                 var n1 = double.parse(fname.text);
                 var n2 = double.parse(sname.text);
                 var n3 = double.parse(tname.text);
                 if(n1>n2)
                   {
                     if (n1>n3)
                       {
                         print(n1);
                       }
                     else
                       {
                         print(n3);
                       }
                   }
                 else
                   {
                     if (n2>n3)
                       {
                         print(n2);
                       }
                     else
                       {
                         print(n3);
                       }
                   }
               },
               child: Container(
                 width: 250.0,
                 height: 50.0,
                 child: Center(child: Text("Find Largest Number")),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0),
                   gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.black26])
                 )
                 ),
             ),
             SizedBox(height: 20.0,),
             GestureDetector(
               onTap: () {
                 Navigator.of(context).pop(context);
               },
               child: Container(
                 width: 250.0,
                 height: 50.0,
                 child: Center(child: Text("Back")),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0),
                   gradient: LinearGradient(colors: [Colors.black,Colors.pinkAccent,Colors.black])
                 ),
               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
