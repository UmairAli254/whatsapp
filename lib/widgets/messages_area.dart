import 'package:flutter/material.dart';
import 'messages.dart';

class MessagesArea extends StatefulWidget {
  const MessagesArea({Key? key}) : super(key: key);

  @override
  _MessagesAreaState createState() => _MessagesAreaState();
}

class _MessagesAreaState extends State<MessagesArea> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),        
        child: Messages(),
      )
    );
  }
}
