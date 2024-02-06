import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:brain_brust/models/chat_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseAuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static FirebaseStorage storage = FirebaseStorage.instance;

  static late ChatUser me;

  Future<bool> userExists() async {
    User? currentUser = _auth.currentUser;
    return (await firestore.collection('users').doc(currentUser!.uid).get()).exists;
  }

  Future<void> getSelfInfo() async {
    User? currentUser = _auth.currentUser;
    await firestore.collection('users').doc(currentUser!.uid).get().then((user) async {
      if (user.exists) {
        me = ChatUser.fromJson(user.data()!);
        print('My Data:${user.data()}');
      } else {
        await createUser(currentUser);
      }
    });
  }

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occurred");
    }
    return null;
  }

  Future<User?> signInEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occurred");
    }
    return null;
  }

  Future<void> createUser(User user) async {
    final time = DateTime.now().millisecondsSinceEpoch.toString();
    final chatUser = ChatUser(
      id: user.uid,
      name: user.displayName.toString(),
      email: user.email.toString(),
      about: "hey",
      image: user.photoURL.toString(),
      createdAt: time,
      isOnline: 'false',
      lastActive: time,
      pushToken: '',
    );

    await firestore.collection('users').doc(user.uid).set(chatUser.toJson());
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllUsers() {
    User? currentUser = _auth.currentUser;
    return firestore.collection('users').where('id', isNotEqualTo: currentUser!.uid).snapshots();
  }

  static Future<void> updateUserInfo() async {
    User? currentUser = _auth.currentUser;
    await firestore.collection('users').doc(currentUser!.uid).update({
      'name': me.name,
      'about': me.about,
    });
  }

  static Future<void> updateProfilePicture(ChatUser user, File file) async {
    final ext = file.path.split('.').last;
    final ref = storage.ref().child('profile_pictures/${user.id}.$ext');

    await ref.putFile(file);
    final imageUrl = await ref.getDownloadURL();

    // Update user's image URL in Firestore
    await FirebaseFirestore.instance.collection('users').doc(user.id).update({'image': imageUrl});

    // Update local user object
    user.image = imageUrl;
  }
}
