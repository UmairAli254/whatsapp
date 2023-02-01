import "package:flutter/material.dart";

class CameraPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.center,
      // color: const Color.fromARGB(220, 7, 94, 84),
      child: const Text(
        "Camera",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30
        ),
      )
    );
  }
}