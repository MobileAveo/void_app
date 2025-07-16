import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:void_app/app/common/assets.dart';
import 'package:void_app/app/common/colours.dart';
import 'package:void_app/app/common/strings.dart';
import 'package:void_app/app/common/text_styles.dart';
import 'package:void_app/app/core/text_with_square_bracket.dart';
import 'package:void_app/app/modules/locked_app/controllers/locked_app_controller.dart';
import 'package:void_app/app/routes/app_pages.dart';

class LockedAppView extends GetView<LockedAppController> {
  const LockedAppView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          _topView(),
          SizedBox(
            width: 177,
            child: Image.asset(Assets.imageLogo),
          ),
          SizedBox(height: 16),
          Spacer(),
          _lockedApp(),
          SizedBox(height: 30),
        ],
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.STATISTICS);
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 30,
              ),
              child: Container(
                width: 363,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0x26CBD7E8),
                      Color(0x66CBD7E8),
                      Color(0x26CBD7E8),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(0.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(139.5),
                    color: const Color(0xFF101010),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 6.0,
                      right: 16.0,
                      bottom: 6.0,
                      left: 6.0,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 10,
                          bottom: 10,
                          child: Text(
                            AppStrings.iAmCommitted,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.geist14w600White,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(140),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0x1DFFFFFF),
                                  Color(0x0DFFFFFF),
                                  Color(0x1DFFFFFF),
                                ],
                                stops: [0.0, 0.5, 1.0],
                              ),
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(0.5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(139.5),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Center(
                                  child: Icon(
                                    Icons.check_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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

  Column _lockedApp() {
    return Column(
      children: [
        Text(
          AppStrings.accessTo,
          textAlign: TextAlign.center,
          style: AppTextStyles.geist12w700White,
        ),
        SizedBox(height: 20),
        Image.asset(
          Assets.iconChrome,
          height: 64,
        ),
        SizedBox(height: 20),
        TextWithSqureBracket(
          text: AppStrings.isSuspended,
          bracketColor: AppColors.red,
        ),
      ],
    );
  }

  Stack _topView() {
    return Stack(
      children: [
        Image.asset(Assets.imageBackground),
        Positioned(
          bottom: 14,
          left: 0,
          right: 0,
          child: Text(
            AppStrings.youAreDeepInThe,
            style: AppTextStyles.geist16w500Secondary,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
