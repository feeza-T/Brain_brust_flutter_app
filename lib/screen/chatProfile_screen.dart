import 'dart:io';

import 'package:brain_brust/models/chat_user.dart';
import 'package:brain_brust/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  final ChatUser user;

  const ProfileScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formkey = GlobalKey<FormState>();
  String? _image;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 64, 29, 90),
          foregroundColor: Colors.white,
          title: const Text('Profile Screen'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 64, 29, 90),
          foregroundColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.logout),
          label: Text('LogOut'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: mq.size.width * 0.05),
            child: Column(
              children: [
                SizedBox(width: mq.size.width, height: mq.size.height * 0.03),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(mq.size.height * .1),
                      child: _image != null
                          ? Image.file(
                              File(_image!),
                              width: mq.size.height * .2,
                              height: mq.size.height * .2,
                              fit: BoxFit.cover,
                            )
                          : CachedNetworkImage(
                              width: mq.size.height * .2,
                              height: mq.size.height * .2,
                              fit: BoxFit.cover,
                              imageUrl: widget.user.image,
                              errorWidget: (context, url, error) =>
                                  CircleAvatar(
                                    child: Icon(Icons.person,
                                        color: Color.fromARGB(255, 64, 29, 90)),
                                    backgroundColor: Color.fromARGB(255, 134, 114, 161),
                                  ),
                            ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: MaterialButton(
                        elevation: 1,
                        onPressed: () {
                          _showBottomSheet(widget.user);
                        },
                        shape: const CircleBorder(),
                        color: Colors.white,
                        child: Icon(
                          Icons.edit,
                          color: Colors.deepPurple,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: mq.size.height * .03),
                Text(
                  widget.user.email,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(height: mq.size.height * .05),
                TextFormField(
                  initialValue: widget.user.name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.purple),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'eg. Takwa Jahin',
                      labelText: 'Name'),
                ),
                SizedBox(height: mq.size.height * .05),
                TextFormField(
                  initialValue: widget.user.about,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.info_outline, color: Colors.purple),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'eg. Score',
                      labelText: 'About'),
                ),
                SizedBox(height: mq.size.height * .05),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color.fromARGB(255, 45, 13, 51),
                    minimumSize:
                        Size(mq.size.width * .5, mq.size.height * .06),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.edit, color: Colors.white, size: 28),
                  label: const Text(
                    'UPDATE',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(ChatUser user) {
    var mq = MediaQuery.of(context);
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        builder: (_) {
          return ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(
                top: mq.size.height * 0.03, bottom: mq.size.height * 0.05),
            children: [
              const Text(
                'Pick Profile Picture',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: mq.size.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          fixedSize: Size(mq.size.width * .3,
                              mq.size.height * .15)),
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();

                        final XFile? image = await picker.pickImage(
                            source: ImageSource.gallery);
                        if (image != null) {
                          setState(() {
                            _image = image.path;
                          });

                          FirebaseAuthService.updateProfilePicture(user, File(_image!));
                          Navigator.pop(context);
                        }
                      },
                      child: Image.asset('assets/images/gallery.png')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          fixedSize: Size(mq.size.width * .3,
                              mq.size.height * .15)),
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();

                        final XFile? image = await picker.pickImage(
                            source: ImageSource.camera);
                        if (image != null) {
                          setState(() {
                            _image = image.path;
                          });

                          FirebaseAuthService.updateProfilePicture(user, File(_image!));
                          Navigator.pop(context);
                        }
                      },
                      child: Image.asset('assets/images/camera.jpg')),
                ],
              ),
            ],
          );
        });
  }
}
