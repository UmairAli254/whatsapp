import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  var senderStyle = const BubbleStyle(
    margin: BubbleEdges.only(top: 5),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: Color.fromRGBO(225, 255, 199, 1),
  );

  var receiveStyle = const BubbleStyle(
    margin: BubbleEdges.only(top: 5),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
  );

  // This is to scroll to the last massage of listview
	ScrollController _myController = ScrollController();

  @override
  Widget build(BuildContext context) {
  // This is to scroll to the last massage of listview and it should be inside the build method always
    		SchedulerBinding.instance.addPostFrameCallback((_){
				_myController.jumpTo(_myController.position.maxScrollExtent);  
			});

    return ListView(

    // The below line is to scroll to the last massage of listview. it should be start of the ListView
      controller: _myController,

      children: [
        // Data Bubble
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11)),
        ),
        // Sender Messages
        Bubble(
          style: senderStyle,
          child: const Text('Hello, World!',
              textAlign: TextAlign.right, style: TextStyle(fontSize: 20)),
             
        ),
        Bubble(
            style: senderStyle,
            showNip: false,
            child: const Text(
                'How are you?',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20))
          ),
          
        // Receiver Messages
        Bubble(
          style: receiveStyle,
          child: const Text('Hi, developer!', style: TextStyle(fontSize: 20))
        ),
        Bubble(
         style: receiveStyle,
          showNip: false,
          child: const Text('I\'am fine!', style: TextStyle(fontSize: 20))
        ),
        // Sender Messages
        Bubble(
          style: senderStyle,
          child: const Text('Hello, World!',
              textAlign: TextAlign.right, style: TextStyle(fontSize: 20)),
             
        ),
        Bubble(
            style: senderStyle,
            showNip: false,
            child: const Text(
                'How are you?',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20))
          ),

        // Receiver Messages
        Bubble(
          style: receiveStyle,
          child: const Text('Hi, developer!', style: TextStyle(fontSize: 20))
        ),
        Bubble(
         style: receiveStyle,
          showNip: false,
          child: const Text('I\'am fine!', style: TextStyle(fontSize: 20))
        ),
        // Sender Messages
        Bubble(
          style: senderStyle,
          child: const Text('Hello, World!',
              textAlign: TextAlign.right, style: TextStyle(fontSize: 20)),
             
        ),
        Bubble(
            style: senderStyle,
            showNip: false,
            child: const Text(
                'How are you?',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20))
          ),

        // Receiver Messages
        Bubble(
          style: receiveStyle,
          child: const Text('Hi, developer!', style: TextStyle(fontSize: 20))
        ),
        Bubble(
         style: receiveStyle,
          showNip: false,
          child: const Text('I\'am fine!', style: TextStyle(fontSize: 20))
        ),
        // Sender Messages
        Bubble(
          style: senderStyle,
          child: const Text('Hello, World!',
              textAlign: TextAlign.right, style: TextStyle(fontSize: 20)),
             
        ),
        Bubble(
            style: senderStyle,
            showNip: false,
            child: const Text(
                'How are you?',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20))
          ),

        // Receiver Messages
        Bubble(
          style: receiveStyle,
          child: const Text('Hi, developer!', style: TextStyle(fontSize: 20))
        ),
        Bubble(
         style: receiveStyle,
          showNip: false,
          child: const Text('Last One', style: TextStyle(fontSize: 20))
        ),
      ],
    );
  }
}
