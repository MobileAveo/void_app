import 'package:flutter/material.dart';
import 'package:void_app/app/common/colours.dart';
import 'package:void_app/app/common/text_styles.dart';
import 'package:void_app/app/core/app_icon_with_dot.dart';

class AppDetailsWithIconAndText extends StatelessWidget {
  final String title;
  final List<String>? icons;
  final List<Color> dotColors;
  final bool isIconWithDot;
  final String? subtitle;
  const AppDetailsWithIconAndText({
    super.key,
    required this.title,
    this.icons = const [],
    this.dotColors = const [AppColors.white, AppColors.white, AppColors.white],
    this.isIconWithDot = true,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.geist12w500White,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          child: isIconWithDot
              ? Row(
                  children: [
                    AppIconWithDot(
                      icon: icons![0],
                      dotColor: dotColors[0],
                    ),
                    SizedBox(width: 6),
                    AppIconWithDot(
                      icon: icons![1],
                      dotColor: dotColors[1],
                    ),
                    SizedBox(width: 6),
                    AppIconWithDot(
                      icon: icons![2],
                      dotColor: dotColors[2],
                    ),
                  ],
                )
              : ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return AppTextStyles.textGradient2.createShader(bounds);
                  },
                  child: Text(
                    subtitle ?? '',
                    style: AppTextStyles.geist24w500White,
                  ),
                ),
        )
      ],
    );
  }
}
