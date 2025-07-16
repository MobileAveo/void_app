import 'package:flutter/material.dart';
import 'package:void_app/app/common/colours.dart';

class AppIconWithDot extends StatelessWidget {
  final String icon;
  final Color? dotColor;
  const AppIconWithDot({
    super.key,
    required this.icon,
    this.dotColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icon,
          width: 24,
          height: 24,
        ),
        SizedBox(height: 4),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dotColor,
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
