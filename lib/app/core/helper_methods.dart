// Helper method to convert icon string to actual asset path
import 'package:void_app/app/common/assets.dart';

String getIconPath(String iconString) {
  switch (iconString) {
    case 'Assets.iconHome':
      return Assets.iconHome;
    case 'Assets.iconVoid':
      return Assets.iconVoid;
    case 'Assets.iconSettings':
      return Assets.iconSettings;
    default:
      return Assets.iconHome; // fallback
  }
}
