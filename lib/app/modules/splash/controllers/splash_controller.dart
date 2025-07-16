import 'package:get/get.dart';
import 'package:void_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.LOCKED_APP);
    });
  }
}
