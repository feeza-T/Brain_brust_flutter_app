import 'package:brain_brust/models/chat_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class FirebaseAuthService{

static FirebaseAuth _auth=FirebaseAuth.instance;
static FirebaseFirestore firestore= FirebaseFirestore.instance;

User get user=>_auth.currentUser!;

Future<User?> signUpWithEmailAndPassword(String email,String password) async{

  try{
    UserCredential credential= await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return credential.user;
  }
  catch(e){
    print("Some error occured");
  }
  return null;
}
Future<User?> signInEmailAndPassword(String email,String password) async{

  try{
    UserCredential credential= await _auth.signInWithEmailAndPassword(email: email, password: password);
    return credential.user;
  }
  catch(e){
    print("Some error occured");
  }
  return null;
}
Future<bool>userExists()async{
  return( await firestore
  .collection('users')
  .doc(user.uid)
  .get()).exists;
}

Future<void>CreateUser()async{
  final time= DateTime.now().millisecondsSinceEpoch.toString();
  final chatUser=ChatUser(
    id:user.uid,
    name:user.displayName.toString(),
    email:user.email.toString(),
    about:"hey",
    image:user.photoURL.toString(),
    createdAt:time ,
    isOnline:'false',
    lastActive: time,
    pushToken: '',
        );
        

  return await firestore
  .collection('users')
  .doc(user.uid)
  .set(chatUser.toJson());
}
}