import 'package:flutter/material.dart';

class ActionButtonsSingleChat extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        TextButton(
              onPressed: () {},
              child: Icon(Icons.video_call),
              style: TextButton.styleFrom(
                  iconColor: Colors.white,
                  minimumSize: Size.zero, // Set this
                  // padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap
                  ),
            ),
        TextButton(
              onPressed: () {},
              child: Icon(Icons.call),
              style: TextButton.styleFrom(
                  iconColor: Colors.white,
                  minimumSize: Size.zero, // Set this
                  // padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            ),
        TextButton(
              onPressed: () {},
              child: Icon(Icons.more_vert),
              style: TextButton.styleFrom(
                  iconColor: Colors.white,
                  minimumSize: Size.zero, // Set this
                  // padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            ),
      ],
    );
  }
}