import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/lifelines_sideBar.dart';
import 'package:brain_brust/screen/ScienceQues.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';

class Advance_ScienceQues extends StatefulWidget {
  @override
  Advance_ScienceQuesState createState() => Advance_ScienceQuesState();
}

class Advance_ScienceQuesState extends State<Advance_ScienceQues> {
  int currentQuestionIndex = 0;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Which particle is associated with the weak nuclear force?',
      'options': ['a) Quark', 'b) Lepton', 'c) Photon', 'd) Gluon'],
    },
    {
      'question': 'What phenomenon describes the bending of light around an obstacle?',
      'options': ['a) Diffraction', 'b) Reflection', 'c) Refraction', 'd) Dispersion'],
    },
    {
      'question': 'Which of the following elements has the highest electronegativity?',
      'options': ['a) Fluorine', 'b) Oxygen', 'c) Carbon', 'd) Nitrogen'],
    },
    {
      'question': 'What is the Heisenberg Uncertainty Principle related to?',
      'options': ['a) Momentum and position', 'b) Energy and time', 'c) Speed and time', 'd) Mass and velocity'],
    },
    {
      'question': 'Which subatomic particle is exchanged to create an electric force?',
      'options': ['a) Proton', 'b) Neutron', 'c) Electron', 'd) Positron'],
    },
    {
      'question': 'What type of bond is formed between two non-metals sharing electrons?',
      'options': ['a) Ionic bond', 'b) Metallic bond', 'c) Covalent bond', 'd) Hydrogen bond'],
    },
    {
      'question': 'Which of the following is NOT a fundamental force in nature?',
      'options': ['a) Strong nuclear force', 'b) Weak nuclear force', 'c) Electromagnetic force', 'd) Frictional force'],
    },
    {
      'question': 'What is the phenomenon where light waves oscillate in more than one plane?',
      'options': ['a) Polarization', 'b) Diffraction', 'c) Interference', 'd) Dispersion'],
    },
    {
      'question': 'Which equation describes the conservation of energy?',
      'options': ['a) E = mc^2', 'b) F = ma', 'c) P = mv', 'd) F = d(mv)/dt'],
    },
    {
      'question': 'What is the term for the study of the distribution and motion of celestial objects?',
      'options': ['a) Cosmology', 'b) Astrology', 'c) Astronomy', 'd) Meteorology'],
    },
    {
      'question': 'Which type of radiation is primarily responsible for the greenhouse effect?',
      'options': ['a) Ultraviolet radiation', 'b) Infrared radiation', 'c) Visible light', 'd) Gamma radiation'],
    },
    {
      'question': 'What is the principle behind MRI (Magnetic Resonance Imaging)?',
      'options': ['a) Nuclear fusion', 'b) Quantum entanglement', 'c) Magnetic resonance', 'd) Electromagnetic induction'],
    },
    {
      'question': 'Which of the following particles is its own antiparticle?',
      'options': ['a) Neutrino', 'b) Photon', 'c) Electron', 'd) Proton'],
    },
    {
      'question': 'What does the Pauli Exclusion Principle state?',
      'options': ['a) Two electrons in an atom cannot have the same set of quantum numbers.', 'b) Energy levels of an atom are quantized.', 'c) Electrons move in elliptical orbits.', 'd) All atoms strive to achieve a full valence shell.'],
    },
    {
      'question': 'In thermodynamics, what does the second law state about entropy?',
      'options': ['a) It remains constant.', 'b) It decreases over time.', 'c) It increases over time.', 'd) It oscillates randomly.'],
    },
    {
      'question': 'Which of the following particles has a fractional electric charge?',
      'options': ['a) Proton', 'b) Electron', 'c) Quark', 'd) Neutrino'],
    },
    {
      'question': 'What phenomenon explains the behavior of particles like electrons as both waves and particles?',
      'options': ['a) Dual nature of matter', 'b) Quantum entanglement', 'c) Superposition principle', 'd) Wave-particle duality'],
    },
    {
      'question': 'In the context of nuclear reactions, what does the term "half-life" represent?',
      'options': ['a) Time taken for half the sample to decay', 'b) Time taken for the entire sample to decay', 'c) Time taken for fusion', 'd) Time taken for fission'],
    },
    {
      'question': 'Which law of thermodynamics states that energy cannot be created or destroyed, only transformed?',
      'options': ['a) Zeroth law', 'b) First law', 'c) Second law', 'd) Third law'],
    },
    {
      'question': 'What is the concept in quantum mechanics where particles become interconnected and the state of one particle instantly affects the state of another, regardless of distance?',
      'options': ['a) Superposition', 'b) Quantum tunneling', 'c) Quantum entanglement', 'd) Quantum fluctuation'],
    }
  ];

  void goToNextQuestion() {
    setState(() {
      currentQuestionIndex = (currentQuestionIndex + 1) % questions.length;
    });
  }

  Future<void> _showQuitConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Quit Game'),
          content: const Text('Are you sure to quit the game?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pop(context); // Go back to the previous screen (QuizIntro)
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final questionData = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2A1639),
        foregroundColor: Colors.white,
        title: const Text('10 points', style: TextStyle(fontSize: 20)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              _showQuitConfirmationDialog(context);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
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
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    questionData['question'],
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: (questionData['options'] as List<String>).map((option) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Text(option, style: const TextStyle(fontSize: 25), textAlign: TextAlign.center,),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        child: const Text('Next Question', style: TextStyle(fontSize: 20)),
        onPressed: () {
          goToNextQuestion();
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScienceQues(),
  ));
}
