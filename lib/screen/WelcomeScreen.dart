import 'package:flutter/material.dart';
import 'package:brain_brust/screen/login.dart';
import 'package:brain_brust/screen/regScreen.dart';
import 'package:brain_brust/screen/Home.dart';

class WelcomeScreen extends StatelessWidget {
  const  WelcomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
        gradient: LinearGradient(
        colors:[
       Color(0xffB81736),
       Color(0xff2A1639),
          ]
)
),
        child:Column(
          children: [
            const Padding(
        padding:  EdgeInsets.only(top: 40.0),
           child: Image(image: AssetImage('assets/images/logoo.png'))
            ),
         const SizedBox(
           height: 30,
         ),
            const Text('Welcome \n to BRAIN BRUST Quiz App', style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white ),
               textAlign: TextAlign.center ,),
            const SizedBox(height:30),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const login()));
              },
            child: Container(
              width:320,
              height: 53,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30),
               border: Border.all(color: Colors.white),
             ),
              child: const Center(child:Text('SIGN IN', style: TextStyle(
                fontSize:20,
                fontWeight: FontWeight.bold,
                color:Colors.white,
              ),),),
            ),
            ),
                const SizedBox(height:30),
      GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const regScreen()));
        },
             child: Container(
              height: 53,
              width:320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child:const Center(child:Text('SIGN UP', style: TextStyle(
                fontSize:20,
                fontWeight: FontWeight.bold,
                color:Colors.black,
              ),),),
            ),
      ),
            const Spacer(),
            const Text('Login with Social Media', style: TextStyle(
            fontSize:17,
            fontWeight: FontWeight.bold,
            color:Colors.white,
            ),),
           // const Image(image: AssetImage('assets/images/socialPlatforms.png'))

          ],
        ) ,
)

);
  }
}

