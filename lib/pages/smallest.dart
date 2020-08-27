import 'package:flutter/material.dart';

class Small extends StatelessWidget {
  TextEditingController finame = TextEditingController();
  TextEditingController sename = TextEditingController();
  TextEditingController thname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Smallest one"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              TextField(
                controller: finame,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.create),
                  hintText: "Enter number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                controller: sename,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.create),
                  hintText: "Enter number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                controller: thname,
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
                  var n1 = double.parse(finame.text);
                  var n2 = double.parse(sename.text);
                  var n3 = double.parse(thname.text);
                  if(n1>n2)
                    {
                      if(n2>n3)
                        {
                          print(n3);
                        }
                      else
                        {
                          print(n2);
                        }
                    }
                  else
                    {
                      if (n1>n3)
                        {
                          print(n3);
                        }
                      else
                        {
                          print(n1);
                        }
                    }
                },
                child: Container(
                  width: 250.0,
                  height: 50.0,
                  child: Center(child: Text("Find Smallest Number")),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.teal,Colors.black26]),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
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
                    gradient: LinearGradient(colors: [Colors.black,Colors.teal,Colors.black]),
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
