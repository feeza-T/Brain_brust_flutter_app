import 'dart:convert';
import 'dart:math';

import 'package:brain_brust/models/chat_user.dart';
import 'package:brain_brust/screen/ChatRoom.dart';
import 'package:brain_brust/screen/chatProfile_screen.dart';
import 'package:brain_brust/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/screen/FirstScreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatUser> _list = [];
  final List<ChatUser> _searchlist = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    FirebaseAuthService().getSelfInfo();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 64, 29, 90),
          foregroundColor: Colors.white,
          leading: Icon(Icons.home),
          title: _isSearching
              ? TextField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Name,Email,.....'),
                  autofocus: true,
                  style: const TextStyle(fontSize: 17, letterSpacing: 0.5),
                  onChanged: (val) {
                    _searchlist.clear();

                    for (var i in _list) {
                      if (i.name.toLowerCase().contains(val.toLowerCase()) ||
                          i.email.toLowerCase().contains(val.toLowerCase())) {
                        _searchlist.add(i);
                      }
                      setState(() {
                        _searchlist;
                      });
                    }
                  },
                )
              : Text('Message'),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _isSearching = !_isSearching;
                  });
                },
                icon: Icon(_isSearching ? Icons.clear_all_rounded : Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen(user: FirebaseAuthService.me)));
                },
                icon: Icon(Icons.more_vert)),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_comment_rounded),
          ),
        ),
        body: StreamBuilder(
          stream: FirebaseAuthService().getAllUsers(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
              case ConnectionState.none:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.active:
              case ConnectionState.done:
                final data = snapshot.data?.docs;
                _list = data?.map((e) => ChatUser.fromJson(e.data())).toList() ?? [];
                if (_list.isNotEmpty) {
                  return ListView.builder(
                    itemCount: _isSearching ? _searchlist.length : _list.length,
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ChatRoom(user: _isSearching ? _searchlist[index] : _list[index]);
                    },
                  );
                } else {
                  return const Center(
                    child: Text(
                      'No Connections Found!',
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }
            }
          },
        ),
      ),
    );
  }
}
