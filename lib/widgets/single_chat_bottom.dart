import 'package:flutter/material.dart';

class SingleChatBottom extends StatefulWidget {
  const SingleChatBottom({super.key});

  @override
  _SingleChatBottomState createState() => _SingleChatBottomState();
}

class _SingleChatBottomState extends State<SingleChatBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        textDirection: TextDirection.ltr,
        children: [
// TextField
          Flexible(
              child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              hintText: "Message",
              hintStyle: const TextStyle(fontSize: 20),
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            ),
          )),

// Send Button
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(186, 7, 94, 84)),
              padding: const EdgeInsets.all(1),
              margin: const EdgeInsets.only(left: 4),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send, color: Colors.white),
                  style: IconButton.styleFrom(
                      // padding: EdgeInsets.all(3)
                      )))
        ],
      ),
    );
  }
}
