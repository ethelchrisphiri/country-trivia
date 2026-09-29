/// Represents a single trivia question with its answer options.
class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final String countryCode;

  const Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.countryCode,
  });
}
