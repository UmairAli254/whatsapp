import "package:flutter/material.dart";

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          textDirection: TextDirection.ltr,
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(Icons.search),
              style: TextButton.styleFrom(
                  iconColor: Colors.white,
                  minimumSize: Size.zero, // Set this
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            ),
            TextButton(
              onPressed: () {},
              child: Icon(Icons.more_vert),
              style: TextButton.styleFrom(
                iconColor: Colors.white,
                minimumSize: Size.zero, // Set this
                padding: EdgeInsets.zero,
                // tapTargetSize: MaterialTapTargetSize.shrinkWrap
              ),
            ),
          ],
        ));
  }
}
