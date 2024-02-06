import 'package:brain_brust/models/chat_user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/screen/FirstScreen.dart';



class ChatRoom extends StatefulWidget {
  final ChatUser user;
  const ChatRoom({super.key,required this.user});
  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {

    return  Card(
        margin:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.04,vertical:4),
        //color:const Color.fromARGB(255, 194, 185, 196),
        elevation: 0.5,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          onTap:(){},
          child:ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(mq.height *.3),
              child: CachedNetworkImage(
                width: mq.height * .055,
                height: mq.height * .055,
                imageUrl: widget.user.image,
                // placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => CircleAvatar(child:Icon(Icons.person)),
              ),
            ),
            title: Text(widget.user.name),
            subtitle: Text(widget.user.about, maxLines:1),
            trailing:Container(
              width:15,
              height:15,
              decoration: BoxDecoration(color:Colors.green,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            // trailing:const  Text('12.00 pm',style:TextStyle(color:Colors.black54),
          ),
        )

    );

  }
}