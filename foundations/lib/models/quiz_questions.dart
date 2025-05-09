class QuizQuestions {
  // constructor functions;
  const QuizQuestions(this.text, this.answers);

  // data property of the class
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
