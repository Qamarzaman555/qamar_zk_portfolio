import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/certifications/certifications.dart';
import '../view/intro/introduction.dart';
import '../view/projects/project_view.dart';

class CustomPageController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final offset = 0.obs;
  final scrollController = ScrollController();
  final List<bool> isHovered = List.generate(5, (_) => false).obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      offset.value = scrollController.offset.toInt();
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void selectTab(int index, BuildContext context) {
    selectedIndex.value = index;
    final targetOffset = index * MediaQuery.of(context).size.height;

    scrollController.animateTo(
      targetOffset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void onHover(int index, bool isHovered) {
    this.isHovered[index] = isHovered;
  }

  List<Widget> screens = [
    const Introduction(),
    SizedBox(
      height: MediaQuery.sizeOf(Get.context!).height,
      width: double.infinity,
      child: const Center(
        child: Text(
          'About Me',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    ProjectsView(),
    Certifications(),
    SizedBox(
      height: MediaQuery.sizeOf(Get.context!).height,
      width: double.infinity,
      child: const Center(
        child: Text(
          'Contact Me',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
  ];
}
