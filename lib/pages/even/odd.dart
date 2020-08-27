import 'package:flutter/material.dart';

class EorO extends StatelessWidget {
  TextEditingController num = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Even Or Odd"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              TextField(
                controller: num,
                decoration: InputDecoration(
                  hintText: "Enter number",
                  prefixIcon: Icon(Icons.create),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  var n = int.parse(num.text);
                  if(n % 2 == 0)
                    {
                      print("EVEN");
                    }
                  else
                    print("ODD");
                },
                child: Container(
                  width: 250.0,
                  height: 50.0,
                  child: Center(child: Text("EVEN/ODD")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(colors: [Colors.deepOrangeAccent,Colors.black26]),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop(context);
                },
                child: Container(
                  width: 250.0,
                  height: 50.0,
                  child: Center(child: Text("Back")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(colors: [Colors.black,Colors.deepOrangeAccent,Colors.black]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
