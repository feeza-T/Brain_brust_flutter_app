 import 'package:flutter/material.dart';
 import 'package:brain_brust/screen/FirstScreen.dart';
 
 

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});
  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
  
    return  Card(
      margin:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.04,vertical:4),
      color:const Color.fromARGB(255, 194, 185, 196),
      elevation: 0.5,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
       onTap:(){},
      child:ListTile(
        leading:CircleAvatar(child:Icon(Icons.person)),
        title: Text('Demo'),
        subtitle: Text('Last message', maxLines:1),
        trailing: Text('12.00 pm',style:TextStyle(color:Colors.black54),
        ),
      )
        
      ),
    );
  }
} 