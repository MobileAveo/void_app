import 'package:flutter/material.dart';
import 'package:void_app/app/common/colours.dart';
import 'package:void_app/app/common/text_styles.dart';

class TextWithSqureBracket extends StatelessWidget {
  final String text;
  final Color? bracketColor;
  const TextWithSqureBracket({
    super.key,
    required this.text,
    this.bracketColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "[   ",
            style: AppTextStyles.geist12w500Red.copyWith(
              color: bracketColor,
            ),
          ),
          TextSpan(
            text: text,
            style: AppTextStyles.geist12w500White,
          ),
          TextSpan(
            text: "   ]",
            style: AppTextStyles.geist12w500Red.copyWith(
              color: bracketColor,
            ),
          ),
        ],
      ),
    );
  }
}
