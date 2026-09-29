import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// A visual placeholder that represents a country flag.
///
/// Displays the country code inside a styled rounded rectangle so the
/// layout reserves the same space a real flag image would occupy.
class FlagPlaceholder extends StatelessWidget {
  final String countryCode;

  const FlagPlaceholder({super.key, required this.countryCode});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 80,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppTheme.primary, AppTheme.primaryDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppTheme.primary.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Center(
        child: Text(
          countryCode,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
