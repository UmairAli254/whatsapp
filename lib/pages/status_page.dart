import 'package:flutter/material.dart';
import "../model/status_data.dart";

class StatusPage extends StatefulWidget{
  @override
  StatusPageState createState()=> StatusPageState();
}

class StatusPageState extends State<StatusPage>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 25,
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
              )
          ),
          title:Text(
            "My Status", 
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.w500
              )
          )
          ,
          subtitle: Text(
            "Tap to add status update",
            style: const TextStyle(fontSize: 17)
            ),
        ),
        Container(
          alignment: const Alignment(-1, -1),
          padding: const EdgeInsets.all(13),
          child: const Text("Viewed Updates", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))
        ),

        // All Status
        Expanded(
        child: ListView.builder(
          itemCount: StatusData.length,
          itemBuilder: (context, i){
            return ListTile(
          leading: CircleAvatar(
            // backgroundColor: Colors.grey,
            backgroundImage: AssetImage(StatusData[i]["avatar"].toString()),
            radius: 25,
          ),
          title:  Text(
            StatusData[i]["name"].toString(), 
            style: const TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.w500
              )
          )
          ,
          subtitle: Text(
           StatusData[i]["time"].toString(),
            style: const TextStyle(fontSize: 17)
            )
        );
              
          },
        )
        )
      ],
    );
  }
}