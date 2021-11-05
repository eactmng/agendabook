import 'package:get/get.dart';

class UserMainController extends GetxController {
  var tabIndex = 0;
  var appbarTitle = "홈".tr.obs;

  List<String> bottom_categories = ["홈".tr, "아젠다".tr, "데일리".tr, "지갑".tr, "내정보".tr];

  void changeTabIndex(int index) {
    tabIndex = index;

    switch(index) {
      case 0: { appbarTitle.value = bottom_categories[0]; }
      break;
      case 1: { appbarTitle.value = bottom_categories[1]; }
      break;
      case 2: { appbarTitle.value = bottom_categories[2]; }
      break;
      case 3: { appbarTitle.value = bottom_categories[3]; }
      break;
      case 4: { appbarTitle.value = bottom_categories[4]; }
      break;
    }
    update();
  }

}
