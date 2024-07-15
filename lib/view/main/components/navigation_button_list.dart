import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../view%20model/controller.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomPageController());
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                  onTap: () => controller.selectTab(0, context), text: 'Home'),
              NavigationTextButton(
                  onTap: () => controller.selectTab(1, context),
                  text: 'About Me'),
              NavigationTextButton(
                  onTap: () => controller.selectTab(2, context),
                  text: 'Projects'),
              NavigationTextButton(
                  onTap: () => controller.selectTab(3, context),
                  text: 'Certifications'),
              NavigationTextButton(
                  onTap: () => controller.selectTab(4, context),
                  text: 'Contact Me'),
            ],
          ),
        );
      },
    );
  }
}
