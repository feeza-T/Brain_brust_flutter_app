<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:brain_brust/screen/Home.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
          Color(0xffB81736),
          automaticallyImplyLeading: false, // Remove the default back button
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the WelcomeScreen page
              Navigator.pop(context);
            },
          ),
        ),
      body: Stack(
        children:[
        Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xffB81736),
                Color(0xff2A1637),
              ]
          ),
        ),
        child:


        const Padding(
          padding: EdgeInsets.only(top: 60.0,left:22),
          child:
          Text('Hello\nSign In!', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),

        ),


       Padding(
         padding: const EdgeInsets.only(top: 200),
         child:  Container(
           decoration: const BoxDecoration(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(40),
               topRight: Radius.circular(40),
             ),
                 color:Colors.white,
           ),
          height: double.infinity,
           width:double.infinity,
           child:Padding(
             padding: const EdgeInsets.only(left: 18,right: 18),
             child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               const TextField(
                 decoration: InputDecoration(
                     suffixIcon: Icon(Icons.check,color:Colors.green),
                   label:Text('Gmail',style: TextStyle(
                     fontWeight: FontWeight.bold,
                   color:Color(0xffB81736),
                   ),)
                 ),
               ),
               const TextField(
                 decoration: InputDecoration(
                     suffixIcon: Icon(Icons.visibility_off,color:Colors.green),
                     label:Text('Password',style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color:Color(0xffB81736),
                     ),)
                 ),
               ),
               const SizedBox(height: 20,),
       const Align(
                 alignment: Alignment.centerRight,
                child: Text('Forget Password?',style:TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color:Colors.black,
               )),
               ),
               const SizedBox(height: 70,),
           GestureDetector(
             onTap: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>const Home()));
             },
               child:Container(
                 height:55,
                 width:300,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   gradient: const LinearGradient(
                     colors:[
                     Color(0xffB81736),
                     Color(0xff2A1639),
                   ]
                   )
                 ),
                 child:const Center(child:Text('SIGN IN', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                   color: Colors.white,
                 ),))
               ),
           ),
               SizedBox(height: 150,),
               const Align(
                 alignment: Alignment.bottomRight,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text("Don't have account?",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Colors.grey
                     ),),

                     Text("Sign up",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 17,
                         color: Colors.black
                     ),),
                   ],
                 ),
               )
             ],
           )
           ),
         )  ,
       )
      ]
      )
    );
  }
}


=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/screen/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffB81736),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xffB81736),
                    Color(0xff2A1637),
                  ]
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'Hello\nSign In!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.check, color: Colors.green),
                          label: Text(
                            'Gmail',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffB81736),
                            ),
                          )),
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off, color: Colors.green),
                          label: Text(
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffB81736),
                            ),
                          )),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: _signIn,
                      child: Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffB81736),
                              Color(0xff281537),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: _forgotPassword,
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                        ),
                        child: const Center(
                          child: Text(
                            'Forget password?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xffB81736),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    try {
      await _auth.signInWithEmailAndPassword(email, password);
      User? user = _auth.currentUser;

      if (user != null) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
      }
    } catch (e) {
      print("Error during sign-in: $e");
      throw e;
    }
  }

  void _forgotPassword() async {
    String email = _emailController.text;

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      
    } catch (e) {
      print("Error during forgot password: $e");
      throw e;
    }
  }
}

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print("Error during sign-in: $e");
      throw e;
    }
  }
}
>>>>>>> c28a18f3e325ded2b3e13d20faae94c0e16b8485
