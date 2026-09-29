import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Visual state of an answer button after the user has made a selection.
enum AnswerState { neutral, correct, incorrect }

/// A reusable multiple-choice answer button with colour-coded feedback.
class AnswerButton extends StatelessWidget {
  final String text;
  final AnswerState state;
  final VoidCallback onPressed;
  final bool isEnabled;

  const AnswerButton({
    super.key,
    required this.text,
    required this.state,
    required this.onPressed,
    this.isEnabled = true,
  });

  Color get _backgroundColor {
    switch (state) {
      case AnswerState.correct:
        return AppTheme.correct;
      case AnswerState.incorrect:
        return AppTheme.incorrect;
      case AnswerState.neutral:
        return AppTheme.surface;
    }
  }

  Color get _textColor {
    switch (state) {
      case AnswerState.correct:
      case AnswerState.incorrect:
        return Colors.white;
      case AnswerState.neutral:
        return AppTheme.textPrimary;
    }
  }

  Color get _borderColor {
    switch (state) {
      case AnswerState.correct:
        return AppTheme.correct;
      case AnswerState.incorrect:
        return AppTheme.incorrect;
      case AnswerState.neutral:
        return AppTheme.primary.withValues(alpha: 0.3);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: _backgroundColor,
          foregroundColor: _textColor,
          disabledBackgroundColor: _backgroundColor,
          disabledForegroundColor: _textColor,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: _borderColor, width: 2),
          ),
          elevation: state == AnswerState.neutral ? 2 : 6,
          shadowColor: _backgroundColor.withValues(alpha: 0.4),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
