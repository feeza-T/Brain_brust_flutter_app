import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/lifelines_sideBar.dart';
import 'package:brain_brust/screen/ScienceQues.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';



class EntertaimentQues extends StatelessWidget {
  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Who played the lead role of Harry Potter in the film series based on J.K. Rowling\'s books?',
      'options': ['a) Daniel Radcliffe', 'b) Rupert Grint', 'c) Tom Felton', 'd) Matthew Lewis'],
    },
    {
      'question': 'Which movie won the Academy Award for Best Picture in 2020?',
      'options': ['a) Parasite', 'b) 1917', 'c) Joker', 'd) Nomadland'],
    },
    {
      'question': 'Who is the creator of the famous animated TV series "The Simpsons"?',
      'options': ['a) Seth MacFarlane', 'b) Matt Groening', 'c) Mike Judge', 'd) Trey Parker'],
    },
    {
      'question': 'Which actor portrays Tony Stark/Iron Man in the Marvel Cinematic Universe?',
      'options': ['a) Chris Evans', 'b) Chris Hemsworth', 'c) Robert Downey Jr.', 'd) Mark Ruffalo'],
    },
    {
      'question': 'Who directed the movie "Inception" starring Leonardo DiCaprio?',
      'options': ['a) Christopher Nolan', 'b) Steven Spielberg', 'c) Quentin Tarantino', 'd) Martin Scorsese'],
    },
    {
      'question': 'Which actor played the character of Jack Dawson in the movie "Titanic"?',
      'options': ['a) Leonardo DiCaprio', 'b) Brad Pitt', 'c) Matt Damon', 'd) Johnny Depp'],
    },
    {
      'question': 'Who directed the movie "The Dark Knight"?',
      'options': ['a) Christopher Nolan', 'b) Martin Scorsese', 'c) Steven Spielberg', 'd) James Cameron']
    },
    {
      'question': 'Which actress played the role of Hermione Granger in the Harry Potter film series?',
      'options': ['a) Emma Stone', 'b) Emma Watson', 'c) Scarlett Johansson', 'd) Jennifer Lawrence']
    },
    {
      'question': 'Which movie won the Academy Award for Best Picture in 2019?',
      'options': ['a) Green Book', 'b) The Shape of Water', 'c) Moonlight', 'd) La La Land']
    },
    {
      'question': 'Who created the TV series "Friends"?',
      'options': ['a) Jerry Seinfeld', 'b) David Schwimmer', 'c) Marta Kauffman', 'd) Matthew Perry']
    },
    {
      'question': 'Which actor starred as Neo in the movie "The Matrix"?',
      'options': ['a) Keanu Reeves', 'b) Tom Cruise', 'c) Will Smith', 'd) Brad Pitt']
    },
    {
      'question': 'Who composed the soundtrack for the film "Jurassic Park"?',
      'options': ['a) Hans Zimmer', 'b) John Williams', 'c) Alan Silvestri', 'd) Ennio Morricone']
    },
    {
      'question': 'Which actress won an Oscar for her role in "Silver Linings Playbook"?',
      'options': ['a) Jennifer Lawrence', 'b) Meryl Streep', 'c) Anne Hathaway', 'd) Cate Blanchett']
    },
    {
      'question': 'Who created the TV series "Breaking Bad"?',
      'options': ['a) Vince Gilligan', 'b) David Chase', 'c) Matthew Weiner', 'd) David Simon']
    },
    {
      'question': 'Which actor portrayed the character of Tony Montana in the film "Scarface"?',
      'options': ['a) Al Pacino', 'b) Robert De Niro', 'c) Joe Pesci', 'd) Marlon Brando']
    },
    {
      'question': 'Who directed the movie "Avatar"?',
      'options': ['a) James Cameron', 'b) Peter Jackson', 'c) Ridley Scott', 'd) George Lucas']
    },
    {
      'question': 'Which actor played the role of Black Panther in the Marvel Cinematic Universe?',
      'options': ['a) Chadwick Boseman', 'b) Michael B. Jordan', 'c) Anthony Mackie', 'd) Chris Evans']
    },
    {
      'question': 'Which movie won the Academy Award for Best Animated Feature in 2021?',
      'options': ['a) Soul', 'b) Onward', 'c) Wolfwalkers', 'd) Raya and the Last Dragon']
    },
    {
      'question': 'Who directed the movie "The Shawshank Redemption"?',
      'options': ['a) Frank Darabont', 'b) Quentin Tarantino', 'c) Tim Burton', 'd) Martin Scorsese']
    },
    {
      'question': 'Which actor portrayed the character of Captain Jack Sparrow in the "Pirates of the Caribbean" series?',
      'options': ['a) Orlando Bloom', 'b) Johnny Depp', 'c) Geoffrey Rush', 'd) Keira Knightley']
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
