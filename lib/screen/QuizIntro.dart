// ignore_for_file: file_names

import 'package:brain_brust/screen/EntertainmentQues.dart'; // Corrected import statement
import 'package:brain_brust/screen/GeographyQues.dart';
import 'package:brain_brust/screen/HistoryQues.dart'; // Added missing import statement
import 'package:brain_brust/screen/ScienceQues.dart'; // Corrected import statement
import 'package:brain_brust/screen/SportsQues.dart'; // Added missing import statement
import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';

class QuizIntro extends StatelessWidget {
  final String quizType;

  const QuizIntro({Key? key, required this.quizType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        child: Text('START QUIZ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        onPressed: () {
          _navigateToQuiz(context);
        },
      ),
       appBar: AppBar(
         //title: Text('BRAIN BRUST'),
         backgroundColor: Color(0xff2A1639),
         foregroundColor: Colors.white,
       ),
      //drawer: SideNav(),
       body: SingleChildScrollView(
         child: Container(
         padding: EdgeInsets.only(bottom: 40),
         child:

         Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
          Container(
              width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
           color:  Color(0xff2A1639),

              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("BRAIN BRUST", textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),


              ]

             ),

             ),
          Image.asset('assets/images/Quizintro.jpg', fit:BoxFit.cover ,height:230, width: MediaQuery.of(context).size.width,),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(18),
            child:
            Column(
              children: [Row(
                children: [
                  Icon(Icons.topic_outlined),
                  SizedBox(width:6),
                  Text('RELATED TO',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20,)),
                ],
              ),
                Text('Science, History,Geography,Sports,Entertainment',style:TextStyle(fontSize:17 ))
              ],


            ),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(18),
            child:
            Column(
              children: [Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.timer),
                  SizedBox(width:6),
                  Text('DURATION-',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20,)),
                ],
              ),
                Text('10 minutes',style:TextStyle(fontSize:17 ))
              ],


            ),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(18),
            child:
            Column(
              children: [Row(
                children: [
                  Icon(Icons.topic_outlined),
                  SizedBox(width:6),
                  Text('ABOUT QUIZ',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20,)),
                ],
              ),
                Text("Welcome to BRAIN BURST - The Ultimate Quiz Experience. ",style:TextStyle(fontSize:17 )),
               Text(' BRAIN BURST is not just a quiz app; it is a journey through the realms of science, history, sports, and more. Immerse yourself in a world of knowledge and test your wits against a diverse range of topics designed to challenge and entertain',style:TextStyle(fontSize:17 )),
                Text('Diverse Topics:Explore a vast array of subjects, from the mysteries of the universe to the defining moments in history. Our carefully crafted quizzes cover science, history, sports, and various other fascinating topics. Whether you are a seasoned quizzer or a curious learner, there is something for everyone.',style:TextStyle(fontSize:17 )),
                Text(' Challenge Yourself:  Put your intellect to the test with our thought-provoking questions. BRAIN BURST is designed to stimulate your mind, encourage curiosity, and provide a fun way to learn new things.',style:TextStyle(fontSize:17 )),
              ],


            ),
          )
           ],
             ),
             ),
       ),
    );


  }



  void _navigateToQuiz(BuildContext context) {
    if (quizType == 'ScienceQues') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScienceQues()),
      );
    } else if (quizType == 'SportsQues') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SportsQues()),
      );
    }else if (quizType == 'HistoryQues') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HistoryQues()),
      );
    }else if (quizType == 'EntertainmentQues') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EntertaimentQues()),
      );
    }else if (quizType == 'GeographyQues') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GeographyQues()),
      );
    }
  }
}
