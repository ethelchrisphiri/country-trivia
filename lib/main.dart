import 'package:flutter/material.dart';
import 'screens/quiz_screen.dart';
import 'screens/results_screen.dart';
import 'screens/welcome_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const CountryTriviaApp());
}

/// Root widget that manages navigation between the three screens.
class CountryTriviaApp extends StatelessWidget {
  const CountryTriviaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Trivia',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const _GameController(),
    );
  }
}

/// Controls which screen is visible and holds the final score.
class _GameController extends StatefulWidget {
  const _GameController();

  @override
  State<_GameController> createState() => _GameControllerState();
}

class _GameControllerState extends State<_GameController> {
  // ── Navigation state ────────────────────────────────────────────
  int _screenIndex = 0; // 0 = Welcome, 1 = Quiz, 2 = Results
  int _finalScore = 0;

  // ── Navigation handlers ─────────────────────────────────────────
  void _startGame() {
    setState(() {
      _screenIndex = 1;
    });
  }

  void _onQuizComplete(int score) {
    setState(() {
      _finalScore = score;
      _screenIndex = 2;
    });
  }

  void _playAgain() {
    // Reset all state parameters cleanly before returning to the quiz.
    setState(() {
      _finalScore = 0;
      _screenIndex = 1;
    });
  }

  // ── Build ───────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    switch (_screenIndex) {
      case 0:
        return WelcomeScreen(onStartGame: _startGame);
      case 1:
        return QuizScreen(onQuizComplete: _onQuizComplete);
      case 2:
        return ResultsScreen(score: _finalScore, onPlayAgain: _playAgain);
      default:
        return WelcomeScreen(onStartGame: _startGame);
    }
  }
}
