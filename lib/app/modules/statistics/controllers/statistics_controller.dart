import 'package:get/get.dart';

class StatisticsController extends GetxController {
  // Observable variables for tab states
  final RxInt currentTabIndex = 1.obs; // Statistics tab is selected by default

  // Tab data with enable/disable states
  final RxList<Map<String, dynamic>> tabItems = <Map<String, dynamic>>[
    {
      'icon': 'Assets.iconHome',
      'text': 'INSIGHTS',
      'isEnabled': true,
    },
    {
      'icon': 'Assets.iconVoid',
      'text': 'THE VOID',
      'isEnabled': true,
    },
    {
      'icon': 'Assets.iconSettings',
      'text': 'SETTINGS',
      'isEnabled': true,
    },
  ].obs;

  // Method to update tab enable/disable state
  void updateTabState(int index, bool isEnabled) {
    if (index >= 0 && index < tabItems.length) {
      tabItems[index]['isEnabled'] = isEnabled;
      tabItems.refresh();
    }
  }

  // Method to handle tab selection (no navigation)
  void onTabTap(int index) {
    if (index >= 0 && index < tabItems.length) {
      final tab = tabItems[index];
      if (tab['isEnabled'] == true) {
        currentTabIndex.value = index;
        // No navigation - just update the selected tab
      }
    }
  }

  // Method to enable all tabs
  void enableAllTabs() {
    for (int i = 0; i < tabItems.length; i++) {
      tabItems[i]['isEnabled'] = true;
    }
    tabItems.refresh();
  }

  // Method to disable all tabs except current
  void disableOtherTabs() {
    for (int i = 0; i < tabItems.length; i++) {
      tabItems[i]['isEnabled'] = (i == currentTabIndex.value);
    }
    tabItems.refresh();
  }
}
