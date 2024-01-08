import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/lifelines_sideBar.dart';
import 'package:brain_brust/screen/ScienceQues.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';



class ScienceQues extends StatelessWidget {
  final List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the chemical symbol for gold?',
      'options': ['a) Au', 'b) Ag', 'c) Gd', 'd) Gr'],
    },
    {
      'question': 'Which planet is known as the "Red Planet"?',
      'options': ['a) Jupiter', 'b) Mars', 'c) Saturn', 'd) Venus'],
    },
    {
      'question': 'What is the smallest unit of matter?',
      'options': ['a) Atom', 'b) Molecule', 'c) Proton', 'd) Electron'],
    },
    {
      'question': 'What is the Earth\'s primary source of energy?',
      'options': ['a) Geothermal energy', 'b) Nuclear energy', 'c) Solar energy', 'd) Wind energy'],
    },
    {
      'question': 'What is the unit of measurement for electric current?',
      'options': ['a) Ohms', 'b) Volts', 'c) Watts', 'd) Amperes'],
    },
    {
      'question': 'What force causes objects to fall towards the Earth?',
      'options': ['a) Magnetic force', 'b) Centrifugal force', 'c) Gravitational force', 'd) Frictional force'],
    },
    {
      'question': 'What is the chemical symbol for sodium?',
      'options': ['a) Sa', 'b) So', 'c) Na', 'd) No']
    },
    {
      'question': 'Which gas do plants absorb during photosynthesis?',
      'options': ['a) Oxygen', 'b) Nitrogen', 'c) Carbon Dioxide', 'd) Hydrogen']
    },
    {
      'question': 'What is the powerhouse of the cell?',
      'options': ['a) Ribosome', 'b) Nucleus', 'c) Mitochondria', 'd) Golgi Apparatus']
    },
    {
      'question': 'What is the chemical symbol for iron?',
      'options': ['a) Ir', 'b) Fe', 'c) Io', 'd) In']
    },
    {
      'question': 'Which organ in the human body produces insulin?',
      'options': ['a) Liver', 'b) Kidney', 'c) Pancreas', 'd) Stomach']
    },
    {
      'question': 'What is the process by which plants make their food called?',
      'options': ['a) Respiration', 'b) Transpiration', 'c) Photosynthesis', 'd) Digestion']
    },
    {
      'question': 'Which scientist proposed the theory of general relativity?',
      'options': ['a) Isaac Newton', 'b) Albert Einstein', 'c) Nikola Tesla', 'd) Galileo Galilei']
    },
    {
      'question': 'What is the densest planet in the solar system?',
      'options': ['a) Earth', 'b) Jupiter', 'c) Saturn', 'd) Mercury']
    },
    {
      'question': 'Which type of electromagnetic radiation has the longest wavelength?',
      'options': ['a) Gamma rays', 'b) X-rays', 'c) Infrared', 'd) Radio waves']
    },
    {
      'question': 'What is the unit of measurement for frequency?',
      'options': ['a) Newton', 'b) Hertz', 'c) Pascal', 'd) Joule']
    },
    {
      'question': 'What is the chemical symbol for potassium?',
      'options': ['a) K', 'b) Po', 'c) Pt', 'd) Py']
    },
    {
      'question': 'Which gas makes up the majority of Earth\'s atmosphere?',
      'options': ['a) Oxygen', 'b) Nitrogen', 'c) Carbon Dioxide', 'd) Hydrogen']
    },
    {
      'question': 'What type of energy is stored in a battery?',
      'options': ['a) Mechanical energy', 'b) Chemical energy', 'c) Nuclear energy', 'd) Thermal energy']
    },
    {
      'question': 'What is the chemical formula for water?',
      'options': ['a) HO', 'b) CO2', 'c) H2O', 'd) HCl']
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
