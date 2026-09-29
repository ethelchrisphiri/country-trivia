import '../models/question.dart';

/// The full list of trivia questions used throughout the game.
const List<Question> triviaQuestions = [
  Question(
    questionText: 'What is the capital of France?',
    options: ['London', 'Paris', 'Berlin', 'Madrid'],
    correctAnswerIndex: 1,
    countryCode: 'FR',
  ),
  Question(
    questionText: 'Which country is home to the kangaroo?',
    options: ['New Zealand', 'South Africa', 'Australia', 'Brazil'],
    correctAnswerIndex: 2,
    countryCode: 'AU',
  ),
  Question(
    questionText: 'What is the capital of Japan?',
    options: ['Seoul', 'Bangkok', 'Beijing', 'Tokyo'],
    correctAnswerIndex: 3,
    countryCode: 'JP',
  ),
  Question(
    questionText: 'Which country is known as the Land of the Rising Sun?',
    options: ['China', 'Japan', 'Thailand', 'Vietnam'],
    correctAnswerIndex: 1,
    countryCode: 'JP',
  ),
  Question(
    questionText: 'What is the capital of Canada?',
    options: ['Toronto', 'Vancouver', 'Ottawa', 'Montreal'],
    correctAnswerIndex: 2,
    countryCode: 'CA',
  ),
  Question(
    questionText: 'Which country is famous for the Great Pyramid of Giza?',
    options: ['Mexico', 'Greece', 'Egypt', 'Turkey'],
    correctAnswerIndex: 2,
    countryCode: 'EG',
  ),
  Question(
    questionText: 'What is the capital of Brazil?',
    options: ['Rio de Janeiro', 'São Paulo', 'Brasília', 'Salvador'],
    correctAnswerIndex: 2,
    countryCode: 'BR',
  ),
  Question(
    questionText: 'Which country is home to Machu Picchu?',
    options: ['Chile', 'Peru', 'Colombia', 'Argentina'],
    correctAnswerIndex: 1,
    countryCode: 'PE',
  ),
  Question(
    questionText: 'What is the capital of Australia?',
    options: ['Sydney', 'Melbourne', 'Canberra', 'Perth'],
    correctAnswerIndex: 2,
    countryCode: 'AU',
  ),
  Question(
    questionText: 'Which country is shaped like a boot?',
    options: ['Spain', 'Italy', 'Greece', 'Portugal'],
    correctAnswerIndex: 1,
    countryCode: 'IT',
  ),
];
