import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPageController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final offset = 0.obs;
  final PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      offset.value = pageController.offset.toInt();
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void selectTab(int index, BuildContext context) {
    selectedIndex.value = index;
    final targetOffset = index * MediaQuery.of(context).size.height;

    pageController.animateTo(
      targetOffset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
