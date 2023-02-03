import 'package:flutter/material.dart';

class CallData{
  final name;
  final time;
  final avatar;
  final call_type;

  CallData({this.name, this.time, this.avatar, this.call_type});
}

var all_calls = <CallData>[

  CallData(
    name: "Nobita",
    time: "10:16",
    avatar: "images/nobita.jpg",
    call_type: const Icon(
    Icons.call_missed,
    color: Colors.red,
    size: 18
    )
  ),
  CallData(
    name: "Kalia",
    time: "9:45",
    avatar: "images/kalia.jpg",
    call_type: const Icon(
    Icons.call_received,
    color: Colors.green,
    size: 18
    )

  ),
  CallData(
    name: "Doraemon",
    time: "3:43",
    avatar: "images/doraemon.jpg",
    call_type: const Icon(
    Icons.call_missed,
    color: Colors.red,
    size: 18
    )

  ),
  CallData(
    name: "Jaggu bandar",
    time: "9:30",
    avatar: "images/jaggu.jpg",
    call_type: const Icon(
    Icons.call_received,
    color: Colors.green,
    size: 18
    )
  )

];