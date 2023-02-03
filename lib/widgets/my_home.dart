import "package:flutter/material.dart";
import "../pages/call_page.dart";
import "../pages/status_page.dart";
import "action_buttons.dart";
import "../pages/camera.dart";
import "../pages/chats_page.dart";

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,

      child: Builder(builder: (context) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text("WhatsApp"),
            actions: [ActionButtons()],
            bottom:  TabBar(
                labelStyle: TextStyle(fontSize: 20),
                labelPadding: EdgeInsets.all(10),

                 onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },

                tabs: const [
                  Icon(Icons.photo_camera),
                  Text("Chats"),
                  Text("Status"),
                  Text("Calls"),
                ]),
          ),
          body: TabBarView(
              children: [CameraPage(), Chats(), StatusPage(), CallPage()]),
          floatingActionButton: _fAB(_selectedIndex),
        );
      }),
    );
  }
_fAB(ind) {

    if(ind == 1){
      return FloatingActionButton(
      onPressed: (){},
      backgroundColor: Colors.green,
      child:  const Icon(
           Icons.chat,
           size: 27,
        ),
      );
    }else if(ind == 2){
      return FloatingActionButton(
      onPressed: (){},
      backgroundColor: Colors.green,
      child:  const Icon(
           Icons.photo_camera,
           size: 27,
        ),
      );
    } else if(ind == 3){
      return FloatingActionButton(
      onPressed: (){},
      backgroundColor: Colors.green,
      child:  const Icon(
           Icons.phone,
           size: 27,
        ),
      );
    } 

  }//Funcion ends here
  
}
