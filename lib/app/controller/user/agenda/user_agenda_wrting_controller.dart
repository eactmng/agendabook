import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserAgendaWritingController extends GetxController {
  PageController pageController = PageController(initialPage: 0);
  int curPage = 0;

  late double currentSlider1;
  late bool isChecked;
  late List<bool> selections1;
  late List<bool> selections2_1;
  late List<bool> selections2_2;
  late List<bool> selections2_3;
  late List<bool> selections3;
  late List<bool> selections4;
  late List<bool> selections5;
  late String dropdownValue1;
  late List<String> dropdownList1;

  @override
  void onInit() {
    curPage = 0;
    currentSlider1 = 0;
    isChecked = false;
    selections1 = [true, false];
    selections2_1 = [true, false, false];
    selections2_2 = List.generate(3, (index) => false);
    selections2_3 = List.generate(2, (index) => false);
    selections3 = [true, false, false];
    selections4 = [false, false];
    selections5 = [true, false];
    dropdownValue1 = '카테고리 설정'.tr;
    dropdownList1 = ['카테고리 설정'.tr, '사회'.tr, '경제'.tr, '문화/연예'.tr, '제품'.tr, '건강'.tr, '기타'.tr];
    super.onInit();
  }

  previousPage() {
    pageController.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
    curPage--;
    update();
  }

  nextPage() {
    pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
    curPage++;
    update();
  }

}
