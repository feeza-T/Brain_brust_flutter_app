import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/lifelines_sideBar.dart';
import 'package:brain_brust/screen/ScienceQues.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';



class GeographyQues extends StatelessWidget {
  final List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the capital city of France?',
      'options': ['a) London', 'b) Paris', 'c) Rome', 'd) Madrid']
    },
    {
      'question': 'Which river is the longest in Africa?',
      'options': ['a) Nile', 'b) Amazon', 'c) Congo', 'd) Zambezi']
    },
    {
      'question': 'Which continent is the largest by land area?',
      'options': ['a) Europe', 'b) South America', 'c) Africa', 'd) Asia']
    },
    {
      'question': 'What is the largest desert in the world?',
      'options': ['a) Sahara', 'b) Gobi', 'c) Kalahari', 'd) Atacama']
    },
    {
      'question': 'Which country is known as the "Land of the Rising Sun"?',
      'options': ['a) China', 'b) South Korea', 'c) Japan', 'd) Thailand']
    },
    {
      'question': 'The Great Barrier Reef is situated in which country?',
      'options': ['a) Indonesia', 'b) Philippines', 'c) Australia', 'd) Malaysia']
    },
    {
      'question': 'Which city is known as the "Eternal City"?',
      'options': ['a) Athens', 'b) Rome', 'c) Cairo', 'd) Istanbul']
    },
    {
      'question': 'Where would you find the Great Wall?',
      'options': ['a) China', 'b) India', 'c) Russia', 'd) Brazil']
    },
    {
      'question': 'Which continent is the driest inhabited continent?',
      'options': ['a) Europe', 'b) Africa', 'c) Australia', 'd) Asia']
    },
    {
      'question': 'What is the world\'s largest island?',
    'options': ['a) Greenland', 'b) Iceland', 'c) Madagascar', 'd) Borneo']
    },
    {
      'question': 'Which river runs through Baghdad?',
      'options': ['a) Danube', 'b) Tigris', 'c) Thames', 'd) Mississippi']
    },
    {
      'question': 'Which country is the smallest in the world by land area?',
      'options': ['a) Monaco', 'b) Vatican City', 'c) San Marino', 'd) Liechtenstein']
    },
    {
      'question': 'What is the capital city of New Zealand?',
      'options': ['a) Sydney', 'b) Auckland', 'c) Wellington', 'd) Melbourne']
    },
    {
      'question': 'The city of Marrakech is located in which African country?',
      'options': ['a) Egypt', 'b) Morocco', 'c) Algeria', 'd) Tunisia']
    },
    {
      'question': 'Where is the tallest building in the world, the Burj Khalifa, located?',
      'options': ['a) Dubai', 'b) Abu Dhabi', 'c) Doha', 'd) Riyadh']
    },
    {
      'question': 'Which country is the largest by area in South America?',
      'options': ['a) Brazil', 'b) Argentina', 'c) Peru', 'd) Colombia']
    },
    {
      'question': 'Which country is known as the "Land of the Midnight Sun"?',
      'options': ['a) Norway', 'b) Sweden', 'c) Iceland', 'd) Finland']
    },
    {
      'question': 'The city of Cape Town is located in which African country?',
      'options': ['a) Kenya', 'b) South Africa', 'c) Nigeria', 'd) Egypt']
    },
    {
      'question': 'What is the world\'s longest mountain range?',
    'options': ['a) Andes', 'b) Himalayas', 'c) Rockies', 'd) Alps']
    },
    {
      'question': 'Which ocean is the largest by area?',
      'options': ['a) Indian Ocean', 'b) Arctic Ocean', 'c) Pacific Ocean', 'd) Southern Ocean']
    }

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
