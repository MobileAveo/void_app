import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:void_app/app/common/assets.dart';
import 'package:void_app/app/common/colours.dart';
import 'package:void_app/app/modules/splash/controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          Assets.imageLogo,
          height: 120,
        ),
      ),
    );
  }
}
