import 'package:flutter/material.dart';
import 'package:void_app/app/common/assets.dart';
import 'package:void_app/app/common/colours.dart';
import 'package:void_app/app/common/text_styles.dart';

class CommonTextButtonWithIcon extends StatelessWidget {
  const CommonTextButtonWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: 6),
      // color: Colors.red,
      decoration: BoxDecoration(
        color: AppColors.buttonWhite,
        borderRadius: BorderRadius.circular(140),
      ),
      child: Stack(
        children: [
          Center(
              child: Text(
            'ENTER THE VOID',
            style: AppTextStyles.geist14w600Black,
          )),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140),
                gradient: const LinearGradient(
                  colors: [
                    Color(0x0D000000), // rgba(0, 0, 0, 0.05)
                    Color(0x4D000000), // rgba(0, 0, 0, 0.3)
                    Color(0x0D000000), // rgba(0, 0, 0, 0.05)
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(0.5), // Border width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      139.5), // Slightly smaller to account for border
                  color: const Color(0xFFFFFFFF), // #FFFFFF background
                ),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Center(
                    child: Image.asset(
                      Assets.iconGemini,
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
