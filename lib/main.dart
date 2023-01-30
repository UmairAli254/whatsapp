import "package:flutter/material.dart";
import "widgets/my_home.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "WhatsApp by Umair Ali",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  useMaterial3: true,
       colorSchemeSeed: Color(0xff075e54)
      ),

      home: MyHome()
    );
  }
}
