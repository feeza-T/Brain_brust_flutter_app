import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/lifelines_sideBar.dart';
import 'package:brain_brust/screen/ScienceQues.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';



class HistoryQues extends StatelessWidget {
  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Who was the first President of the United States?',
      'options': ['a) Thomas Jefferson', 'b) George Washington', 'c) John Adams', 'd) James Madison'],
    },
    {
      'question': 'Which ancient civilization built the famous Machu Picchu citadel in Peru?',
      'options': ['a) Aztecs', 'b) Incas', 'c) Mayans', 'd) Egyptians'],
    },
    {
      'question': 'The French Revolution began in which year?',
      'options': ['a) 1789', 'b) 1799', 'c) 1803', 'd) 1783'],
    },
    {
      'question': 'Who was the first female Prime Minister of the United Kingdom?',
      'options': ['a) Margaret Thatcher', 'b) Theresa May', 'c) Angela Merkel', 'd) Indira Gandhi'],
    },
    {
      'question': 'The Battle of Hastings in 1066 marked the conquest of England by which leader?',
      'options': ['a) William the Conqueror', 'b) Richard the Lionheart', 'c) Harold Godwinson', 'd) Edward the Confessor'],
    },
    {
      'question': 'Which event is known as the start of World War I?',
      'options': ['a) The assassination of Archduke Franz Ferdinand', 'b) The sinking of the Lusitania', 'c) The Battle of the Somme', 'd) The Treaty of Versailles'],
    },
    {
      'question': 'Who was the first Emperor of Rome?',
      'options': ['a) Julius Caesar', 'b) Augustus', 'c) Nero', 'd) Constantine']
    },
    {
      'question': 'In which year did Christopher Columbus discover the Americas?',
      'options': ['a) 1492', 'b) 1505', 'c) 1517', 'd) 1523']
    },
    {
      'question': 'Who wrote the famous novel "Pride and Prejudice"?',
      'options': ['a) Charles Dickens', 'b) Jane Austen', 'c) Leo Tolstoy', 'd) Fyodor Dostoevsky']
    },
    {
      'question': 'Which US president issued the Emancipation Proclamation?',
      'options': ['a) Abraham Lincoln', 'b) Thomas Jefferson', 'c) Andrew Jackson', 'd) Ulysses S. Grant']
    },
    {
      'question': 'Which famous document guarantees certain fundamental rights and freedoms for citizens?',
      'options': ['a) Magna Carta', 'b) Declaration of Independence', 'c) Bill of Rights', 'd) Universal Declaration of Human Rights']
    },
    {
      'question': 'Who was the leader of the Soviet Union during the Cuban Missile Crisis?',
      'options': ['a) Nikita Khrushchev', 'b) Joseph Stalin', 'c) Vladimir Lenin', 'd) Mikhail Gorbachev']
    },
    {
      'question': 'Which civilization is credited with inventing the concept of writing?',
      'options': ['a) Sumerians', 'b) Ancient Egyptians', 'c) Greeks', 'd) Chinese']
    },
    {
      'question': 'Who painted the famous artwork "The Last Supper"?',
      'options': ['a) Vincent van Gogh', 'b) Leonardo da Vinci', 'c) Michelangelo', 'd) Pablo Picasso']
    },
    {
      'question': 'Which English monarch is known for having six wives?',
      'options': ['a) King Henry VIII', 'b) King Richard III', 'c) King Edward VI', 'd) King James I']
    },
    {
      'question': 'In what year did the Berlin Wall fall, symbolizing the end of the Cold War?',
      'options': ['a) 1985', 'b) 1989', 'c) 1991', 'd) 1993']
    },
    {
      'question': 'Who was the first person to step on the moon?',
      'options': ['a) Buzz Aldrin', 'b) Neil Armstrong', 'c) Michael Collins', 'd) Alan Shepard']
    },
    {
      'question': 'Which famous abolitionist escaped from slavery and became a leading anti-slavery activist?',
      'options': ['a) Harriet Tubman', 'b) Frederick Douglass', 'c) Sojourner Truth', 'd) Booker T. Washington']
    },
    {
      'question': 'Which city was the capital of the Byzantine Empire?',
      'options': ['a) Athens', 'b) Rome', 'c) Constantinople', 'd) Alexandria']
    },
    {
      'question': 'Who is known for discovering the sea route to India from Europe?',
      'options': ['a) Ferdinand Magellan', 'b) Vasco da Gama', 'c) Christopher Columbus', 'd) Marco Polo']
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
