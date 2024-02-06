import 'package:flutter/material.dart';
import 'package:brain_brust/screen/login.dart';
import 'package:brain_brust/screen/regScreen.dart';
import 'package:brain_brust/screen/Home.dart';
import 'package:brain_brust/screen/FirstScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the MediaQuery to access the screen dimensions
    MediaQueryData mq = MediaQuery.of(context);
    Size size = mq.size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 182, 35, 64),
              Color(0xff2A1639),
            ],
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image(image: AssetImage('assets/images/logoo.png')),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Welcome \n to BRAIN BRUST Quiz App',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Container(
                width: 320,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const regScreen()),
                );
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
         ElevatedButton(
  onPressed: (){},
  style: ElevatedButton.styleFrom(
    primary: Colors.transparent, // Set background color to transparent
    onPrimary: Colors.white, // Set text color to white
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
     // side: BorderSide(color: Colors.white), // Set border color to white
    ),
  ),
  child: Text(
    'Sign In With Google',
    style: TextStyle(
      fontSize: 15,
     // fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}
