import 'package:flutter/material.dart';
import 'package:void_app/app/common/colours.dart';

/// A collection of common text styles used throughout the app.
class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: Colors.black87,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    color: Colors.grey,
  );

  static TextStyle geist16w500Secondary = TextStyle(
    fontFamily: 'Geist',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.secondary.withValues(alpha: 0.8),
  );
  static TextStyle geist14w500White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle geist14w600White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle geist14w400White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static TextStyle geist12w700White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    letterSpacing: 2.4,
    height: 1.0,
  );

  static TextStyle geist12w500Red = TextStyle(
    fontFamily: 'Geist',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.red,
  );

  static TextStyle geist12w500White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    letterSpacing: 2.4,
    height: 1.0,
  );

  static TextStyle geist48w500White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 48,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    letterSpacing: 2.4, // 5% of 48px = 2.4
    height: 1.0, // 100% line height
  );

  static TextStyle geist48w500Gradient = TextStyle(
    fontFamily: 'Geist',
    fontSize: 48,
    fontWeight: FontWeight.w500,
    color: Colors.transparent, // Transparent to show gradient
    letterSpacing: 2.4, // 5% of 48px = 2.4
    height: 1.0, // 100% line height
  );

  // Gradient for the text background
  static const LinearGradient textGradient = LinearGradient(
    begin: Alignment.bottomCenter, // 0deg
    end: Alignment.topCenter,
    colors: [
      Color(0xFF767676), // #767676 at 23.64%
      Color(0xFFECECEC), // #ECECEC at 78.18%
    ],
    stops: [0.2364, 0.7818],
  );

  // Second gradient for text background
  static const LinearGradient textGradient2 = LinearGradient(
    begin: Alignment.bottomCenter, // 0deg
    end: Alignment.topCenter,
    colors: [
      Color(0xFFC6C6C6), // #C6C6C6 at 23.64%
      Color(0xFFECECEC), // #ECECEC at 78.18%
    ],
    stops: [0.2364, 0.7818],
  );

  // Third gradient for text background
  static const LinearGradient textGradient3 = LinearGradient(
    begin: Alignment.topLeft, // 103.77deg
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFC0E5FD), // #C0E5FD at 2.91%
      Color(0xFF2B5CE2), // #2B5CE2 at 83.09%
    ],
    stops: [0.0291, 0.8309],
  );

  static TextStyle geist10w500White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    letterSpacing: 0.0, // 0% letter spacing
    height: 1.0, // 100% line height
  );

  static TextStyle geist24w500White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    letterSpacing: 1.2, // 5% of 24px = 1.2
    height: 1.0, // 100% line height
  );

  static TextStyle geist18w600White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    letterSpacing: 0.0, // 0% letter spacing
    height: 1.0, // 100% line height
  );

  static TextStyle geist16w400White = TextStyle(
    fontFamily: 'Geist',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing: 0.0, // 0% letter spacing
    height: 1.0, // 100% line height
  );

  static TextStyle geist14w600Black = TextStyle(
    fontFamily: 'Geist',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}
