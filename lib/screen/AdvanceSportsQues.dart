
import 'package:flutter/material.dart';

class AdvanceSportsQues extends StatefulWidget {
  @override
  _SportsQuesState createState() => _SportsQuesState();
}

class _SportsQuesState extends State<SportsQues> {
  int currentQuestionIndex = 0;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Who is the only football (soccer) player to have won the FIFA World Cup three times?',
      'options': ['a) Pelé', 'b) Diego Maradona', 'c) Cristiano Ronaldo', 'd) Lionel Messi']
    },
    {
      'question': 'Which city hosted the 2004 Summer Olympics?',
      'options': ['a) Sydney', 'b) Athens', 'c) Barcelona', 'd) Rio de Janeiro']
    },
    {
      'question': 'What is the highest possible break in snooker?',
      'options': ['a) 120', 'b) 147', 'c) 155', 'd) 180']
    },
    {
      'question': 'Who was the first golfer to achieve a career Grand Slam by winning all four major championships?',
      'options': ['a) Tiger Woods', 'b) Gary Player', 'c) Jack Nicklaus', 'd) Ben Hogan']
    },
    {
      'question': 'Which country has won the most Rugby Union World Cups?',
      'options': ['a) England', 'b) New Zealand', 'c) South Africa', 'd) Australia']
    },
    {
      'question': 'Who is the only tennis player to have completed the Golden Slam by winning all four Grand Slam titles and an Olympic gold medal in a single year?',
      'options': ['a) Rafael Nadal', 'b) Andre Agassi', 'c) Steffi Graf', 'd) Serena Williams']
    },
    {
      'question': 'In which year did the NHL (National Hockey League) begin its operations?',
      'options': ['a) 1917', 'b) 1925', 'c) 1933', 'd) 1941']
    },
    {
      'question': 'Which country has won the most Cricket World Cup titles?',
      'options': ['a) West Indies', 'b) Australia', 'c) India', 'd) England']
    },
    {
      'question': 'Who was the first female athlete to win the Olympic marathon?',
      'options': ['a) Joan Benoit Samuelson', 'b) Rosa Mota', 'c) Grete Waitz', 'd) Catherine Ndereba']
    },
    {
      'question': 'Which sport is known as "The Sport of Kings"?',
      'options': ['a) Polo', 'b) Horse racing', 'c) Golf', 'd) Fencing']
    },
    {
      'question': 'Who holds the record for the most consecutive Grand Slam singles titles in tennis?',
      'options': ['a) Roger Federer', 'b) Novak Djokovic', 'c) Margaret Court', 'd) Martina Navratilova']
    },
    {
      'question': 'What is the maximum number of players allowed on an NBA roster during a regular season?',
      'options': ['a) 10', 'b) 12', 'c) 15', 'd) 20']
    },
    {
      'question': 'Which athlete is known for the famous "Fosbury Flop" technique in high jump?',
      'options': ['a) Dick Fosbury', 'b) Sergey Bubka', 'c) Javier Sotomayor', 'd) Mutaz Essa Barshim']
    },
    {
      'question': 'What is the only sport to have been played on the moon?',
      'options': ['a) Golf', 'b) Tennis', 'c) Football', 'd) Running']
    },
    {
      'question': 'Which Olympic Games were boycotted by the United States and several other countries in 1980?',
      'options': ['a) Los Angeles', 'b) Moscow', 'c) Seoul', 'd) Munich']
    },
    {
      'question': 'Who was the first African-American to play in Major League Baseball (MLB)?',
      'options': ['a) Jackie Robinson', 'b) Willie Mays', 'c) Hank Aaron', 'd) Satchel Paige']
    },
    {
      'question': 'Which player has scored the most goals in a single Premier League (EPL) season?',
      'options': ['a) Alan Shearer', 'b) Thierry Henry', 'c) Mohamed Salah', 'd) Cristiano Ronaldo']
    },
    {
      'question': 'Which sport uses the terms "touchdown" and "field goal"?',
      'options': ['a) American Football', 'b) Rugby', 'c) Cricket', 'd) Basketball']
    },
    {
      'question': 'Who holds the record for the fastest century in Test cricket by balls faced?',
      'options': ['a) Brendon McCullum', 'b) Chris Gayle', 'c) David Warner', 'd) Adam Gilchrist']
    },
    {
      'question': 'In which city did the first modern Olympic Games take place in 1896?',
      'options': ['a) Paris', 'b) London', 'c) Athens', 'd) Rome']
    }
  ];

  Future<void> _showQuitConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quit Game'),
          content: Text('Are you sure to quit the game?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pop(context); // Go back to the previous screen (QuizIntro)
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void _showNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Handle end of questions (e.g., show a message or navigate to a result screen)
    }
  }

  @override
  Widget build(BuildContext context) {
    final questionData = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2A1639),
        foregroundColor: Colors.white,
        title: Text('10 points', style: TextStyle(fontSize: 20)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              _showQuitConfirmationDialog(context);
            },
          ),
        ],
      ),
      body: Padding(
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
      ),
      floatingActionButton: ElevatedButton(
        child: Text('NEXT QUESTION', style: TextStyle(fontSize: 20)),
        onPressed: () {
          _showNextQuestion();
        },
      ),
    );
  }
}
