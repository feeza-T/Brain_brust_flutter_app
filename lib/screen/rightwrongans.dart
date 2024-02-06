bool isAnswerCorrect(String userAnswer, String correctAnswer) {
  // Convert both answers to lowercase for case-insensitive comparison
  String userAnswerLower = userAnswer.toLowerCase();
  String correctAnswerLower = correctAnswer.toLowerCase();

  // Check if the user's answer matches the correct answer
  return userAnswerLower == correctAnswerLower;
}

void main() {
  String correctAnswer = "OpenAI";
  String userAnswer = "openai";

  bool correct = isAnswerCorrect(userAnswer, correctAnswer);
  if (correct) {
    print("Correct answer!");
  } else {
    print("Wrong answer!");
  }
}
