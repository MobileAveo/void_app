import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:void_app/app/common/assets.dart';
import 'package:void_app/app/common/colours.dart';
import 'package:void_app/app/common/strings.dart';
import 'package:void_app/app/common/text_styles.dart';
import 'package:void_app/app/core/bottom_nav_bar.dart';
import 'package:void_app/app/common/constants.dart';
import 'package:void_app/app/core/app_details_icon_and_text.dart';
import 'package:void_app/app/core/app_time_with_progress.dart';
import 'package:void_app/app/core/helper_methods.dart';
import 'package:void_app/app/core/text_button_with_icon.dart';
import 'package:void_app/app/core/text_with_square_bracket.dart';
import 'package:void_app/app/modules/statistics/controllers/statistics_controller.dart';

class StatisticsView extends GetView<StatisticsController> {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _heading(),
                _screenTimeValuesController(),
                _timeOffline(),
                ...AppConstants.appTimeData.map(
                  (app) => AppTimeWithProgressBar(
                    appName: app['name'],
                    icon: app['icon'],
                    time: app['time'],
                    progress: app['progress'],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CommonTextButtonWithIcon(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Obx(() => CommonBottomNavBar(
              currentIndex: controller.currentTabIndex.value,
              onTap: controller.onTabTap,
              items: controller.tabItems
                  .map((tab) => BottomNavBarItem(
                        icon: getIconPath(tab['icon']),
                        text: tab['text'],
                        isEnabled: tab['isEnabled'],
                      ))
                  .toList(),
            )),
      ),
    );
  }

  Column _heading() {
    return Column(
      children: [
        SizedBox(height: 7.65),
        Center(
          child: Image.asset(
            Assets.imageLogo,
            height: 33.3,
          ),
        ),
        SizedBox(height: 16),
        Image.asset(
          Assets.imageBlackHole,
        ),
      ],
    );
  }

  Column _screenTimeValuesController() {
    return Column(
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return AppTextStyles.textGradient.createShader(bounds);
          },
          child: Text(
            '3h 52m',
            style: AppTextStyles.geist48w500White,
          ),
        ),
        SizedBox(height: 10),
        TextWithSqureBracket(text: AppStrings.screenTimeToday),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppDetailsWithIconAndText(
              title: AppStrings.mostUsedApps,
              icons: [
                Assets.iconWhatsapp,
                Assets.iconSnapchat,
                Assets.iconInstagram,
              ],
              dotColors: [
                AppColors.white,
                AppColors.red,
                AppColors.red,
              ],
            ),
            AppDetailsWithIconAndText(
              title: AppStrings.inTheVoid,
              isIconWithDot: false,
              subtitle: '54m',
            ),
            AppDetailsWithIconAndText(
              title: AppStrings.attempts,
              isIconWithDot: false,
              subtitle: '9',
            ),
          ],
        ),
        SizedBox(height: 24),
      ],
    );
  }

  Padding _timeOffline() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                Assets.iconDarkMoon,
                width: 32,
                height: 32,
              ),
              SizedBox(width: 10),
              Text(
                AppStrings.timeOffline,
                style: AppTextStyles.geist16w400White,
              ),
              Spacer(),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return AppTextStyles.textGradient3.createShader(bounds);
                },
                child: Text(
                  '3h 52m',
                  style: AppTextStyles.geist18w600White,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return AppTextStyles.textGradient3.createShader(bounds);
                },
                child: Text(
                  AppStrings.ofYourDayScreenTime,
                  style: AppTextStyles.geist14w400White,
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
