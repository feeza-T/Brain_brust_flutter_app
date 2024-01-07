import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/lifelines_sideBar.dart';
import 'package:brain_brust/screen/ScienceQues.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';



class SportsQues extends StatelessWidget {
  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Which country has won the most FIFA World Cup titles in men\'s soccer?',
      'options': ['a) Brazil', 'b) Germany', 'c) Argentina', 'd) Italy'],
    },
    {
      'question': 'In basketball, what is the standard height for an NBA basketball hoop from the floor?',
      'options': ['a) 10 feet', 'b) 11 feet', 'c) 9 feet', 'd) 12 feet'],
    },
    {
      'question': 'What is the national sport of Japan?',
      'options': ['a) Judo', 'b) Sumo wrestling', 'c) Kendo', 'd) Karate'],
    },
    {
      'question': 'Which NFL team has won the most Super Bowl championships?',
      'options': ['a) New England Patriots', 'b) Dallas Cowboys', 'c) Pittsburgh Steelers', 'd) Green Bay Packers'],
    },
    {
      'question': 'Who is the all-time leading scorer in the history of the NBA?',
      'options': ['a) LeBron James', 'b) Michael Jordan', 'c) Kareem Abdul-Jabbar', 'd) Kobe Bryant'],
    },
    {
      'question': 'In golf, what is the term for scoring one stroke under par on a hole?',
      'options': ['a) Eagle', 'b) Birdie', 'c) Albatross', 'd) Bogey'],
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2A1639),
        foregroundColor: Colors.white,
        title: Text('10 points', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final questionData = questions[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        strokeWidth: 12,
                        backgroundColor: Colors.green,
                      ),
                      Center(
                        child: Text(
                          '30',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    questionData['question'],
                    style: TextStyle(fontSize: 22, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: (questionData['options'] as List<String>).map((option) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(14),
                      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Text(option, style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        child: Text('QUIT GAME', style: TextStyle(fontSize: 20)),
        onPressed: () {
          Navigator.pop(context); // Go back to the previous screen (QuizIntro)
        },
      ),
    );
  }
}
