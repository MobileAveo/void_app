import 'package:flutter/material.dart';
import 'package:void_app/app/common/colours.dart';
import 'package:void_app/app/common/text_styles.dart';

class AppTimeWithProgressBar extends StatelessWidget {
  final String appName;
  final String icon;
  final String time;
  final double progress;
  const AppTimeWithProgressBar({
    super.key,
    required this.appName,
    required this.icon,
    required this.time,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            icon,
            width: 32,
            height: 32,
          ),
          title: Text(
            appName,
            style: AppTextStyles.geist16w400White,
          ),
          trailing: ShaderMask(
            shaderCallback: (Rect bounds) {
              return AppTextStyles.textGradient2.createShader(bounds);
            },
            child: Text(
              time,
              style: AppTextStyles.geist18w600White,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: AppColors.primary.withValues(alpha: 0.2),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: progress, // Use the actual progress value
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFFFFFFF), // #FFFFFF
                    Color(0xFF878787), // #878787
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
