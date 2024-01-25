import 'package:brain_brust/screen/ChatRoom.dart';
import 'package:flutter/material.dart';
 import 'package:brain_brust/screen/FirstScreen.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 29, 90),
        foregroundColor: Colors.white,
        leading: Icon(Icons.home),
        title: const Text('Message'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      
      floatingActionButton: Padding(
        padding:const EdgeInsets.only(bottom: 10),
        child:FloatingActionButton(onPressed: (){},
        child: const Icon(Icons.add_comment_rounded)),
        ),
        body: ListView.builder(
          itemCount:16,
          padding:EdgeInsets.only(top:MediaQuery.of(context).size.height * .01),
          physics: BouncingScrollPhysics(),
          itemBuilder: (constext,index){
        return  const ChatRoom();
        }),
    );
  }
}