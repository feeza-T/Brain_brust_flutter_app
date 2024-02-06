import 'package:brain_brust/models/chat_user.dart';
import 'package:brain_brust/screen/FirstScreen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key, required this.User}) : super(key: key);
  final ChatUser User;

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  late Size mq;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 76, 16, 87),
          
          automaticallyImplyLeading: false,
          flexibleSpace: _appBar(),
        ),
        body: Column(
          children:[
            Expanded(child: 
            StreamBuilder(
         // stream: FirebaseAuthService().getAllUsers(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
              case ConnectionState.none:
                //return const Center(child: CircularProgressIndicator());
              case ConnectionState.active:
              case ConnectionState.done:
               // final data = snapshot.data?.docs;
                //_list = data?.map((e) => ChatUser.fromJson(e.data())).toList() ?? [];
               
               final _list=[];

                if (_list.isNotEmpty) {
                  return ListView.builder(

                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Text('Message: ${_list[index]}');
                    }
                  );
                } else {
                  return const Center(
                    child: Text(
                      'Say Hi!',
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }
            }
          }, stream: null,
        ),
            ),

        _chatInput()
          ]
        ),
      ),
    );
  }

  Widget _appBar() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(mq.height * .03),
            child: CachedNetworkImage(
              width: mq.height * .05,
              height: mq.height * .05,
              imageUrl: widget.User.image,
              errorWidget: (context, url, error) =>
                  const CircleAvatar(child: Icon(Icons.person)),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.User.name,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              const Text(
                "Last seen not available",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _chatInput() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: mq.height * .01, horizontal: mq.width * .025),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.emoji_emotions,
                        color: Color.fromARGB(255, 124, 57, 138), size: 25),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: const InputDecoration(
                        hintText: 'Type Something......',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 124, 57, 138)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.image,
                        color: Color.fromARGB(255, 124, 57, 138), size: 26),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.camera_alt_rounded,
                        color: Color.fromARGB(255, 124, 57, 138), size: 26),
                  ),
                  SizedBox(width: mq.width * .02),
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 0,
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 10),
            shape: const CircleBorder(),
            color: Color.fromARGB(255, 124, 57, 138),
            child: const Icon(Icons.send,
                color: Color.fromARGB(255, 124, 57, 138), size: 28),
          )
        ],
      ),
    );
  }
}
