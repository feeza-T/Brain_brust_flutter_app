import 'dart:convert';
import 'dart:math';

import 'package:brain_brust/models/chat_user.dart';
import 'package:brain_brust/screen/ChatRoom.dart';
import 'package:brain_brust/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/screen/FirstScreen.dart';

class ProfileScreen extends StatefulWidget {
  final ChatUser user;

  const ProfileScreen({super.key, required this.user});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 29, 90),
        foregroundColor: Colors.white,
       
        title: const Text('Profile Screen'),
      
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 64, 29, 90),
          foregroundColor: Colors.white,
          onPressed: () {},
          icon: const Icon(Icons.logout),
          label: Text('LogOut'),
        ),
      ),
     body:  Padding(
       padding:  EdgeInsets.symmetric(horizontal: mq.width *.05),
       child: Column(children: [
        SizedBox(width:mq.width,height: mq.height *.03),
          ClipRRect(
            borderRadius: BorderRadius.circular(mq.height *.1),
            child: CachedNetworkImage(
              width: mq.height * .2,
              height: mq.height * .2,
              fit:BoxFit.fill,
            imageUrl: widget.user.image,
                   // placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) =>
            const  CircleAvatar(child:Icon(Icons.person, color: Colors.purple), backgroundColor: Colors.amber,),
                 ),
          ),
                  SizedBox(height: mq.height *.03),

                  Text(widget.user.email,style:TextStyle( color: Colors.black,fontSize: 16)),
                  
                  SizedBox(height: mq.height *.05),
                  TextFormField(
                    initialValue: widget.user.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person ,color:Colors.purple),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                      hintText: 'eg. Takwa Jahin',
                      label: Text('Name')
                    ),
                    
                  ),

                  SizedBox(height: mq.height *.05),
                  TextFormField(
                    initialValue: widget.user.about,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.info_outline ,color:Colors.purple),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                      hintText: 'eg. Score',
                      label: Text('About')
                    ),
                    
                  ),

                  SizedBox(height: mq.height *.05),

                  ElevatedButton.icon(
                    style:ElevatedButton.styleFrom(
                      shape:const StadiumBorder(),
                      backgroundColor: const Color.fromARGB(255, 45, 13, 51),
                      minimumSize: Size(mq.width *.5,mq.height *.06),
                    ),
                    onPressed: (){}, 
                  icon:const Icon(Icons.edit  ,color: Colors.white, size:28,),
                  label:const Text('UPDATE' , style: TextStyle(fontSize: 16, color: Colors.white,)),
                  )
       ],),
     )
    );
  
}
}
