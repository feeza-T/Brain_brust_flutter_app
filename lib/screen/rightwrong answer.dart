// Define a class to represent a question
class Question {
  final String questionText;
  final String correctAnswer;

  Question(this.questionText, this.correctAnswer);
}

void main() {
  // Sample question data
  List<Question> questions = [
    Question('What is the capital of France?', 'Paris'),
    Question('Which planet is known as the Red Planet?', 'Mars'),
    Question('What is the largest mammal?', 'Blue Whale'),
  ];

  // User's selected answers
  List<String> userAnswers = [
    'Paris',
    'Mars',
    'Elephant'
  ]; // Assuming user's answers

  // Function to check answers
  void checkAnswers(List<Question> questions, List<String> userAnswers) {
    if (questions.length != userAnswers.length) {
      print('Error: Number of questions and answers do not match');
      return;
    }

    for (int i = 0; i < questions.length; i++) {
      String correctAnswer = questions[i].correctAnswer;
      String userAnswer = userAnswers[i];
      bool isCorrect = userAnswer.toLowerCase() == correctAnswer.toLowerCase();
      if (isCorrect) {
        print('Question ${i + 1}: Correct!');
      } else {
        print('Question ${i + 1}: Wrong! Correct answer is: $correctAnswer');
      }
    }
  }

  // Check the answers
  checkAnswers(questions, userAnswers);
}
