import 'package:flutter/material.dart';
import '../model/call_data.dart';

class CallPage extends StatefulWidget{
  @override
  CallPageState createState()=> CallPageState();
}

class CallPageState extends State<CallPage>{
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: all_calls.length,
      itemBuilder: (context, i){

        return ListTile(

          leading: CircleAvatar(
            // backgroundImage: AssetImage("images/nobita.jpg"),
            backgroundImage: AssetImage(all_calls[i].avatar),
            radius: 25,
          ),

          title: Text(
            all_calls[i].name.toString(), 
            style: const TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.w500
              )
          ),

          subtitle: Padding(
            padding: const EdgeInsets.only(top: 2),
                child: Row(
                 children: [
                 Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: all_calls[i].call_type,
                ),
                Text(
                all_calls[i].time.toString(),
                style: const TextStyle(fontSize: 17)
                )
              ],
            ),
          ),

            trailing: TextButton(                              
              onPressed: (){},
              child: Icon(Icons.phone),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size.zero
              ),
            ),
        );
      }
    );
  }
}