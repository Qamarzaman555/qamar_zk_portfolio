import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../controllers/page_controller.dart';

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
                onTap: () => controller.selectTab(0, context),
                text: 'Home',
                icon: Iconsax.home, // Home icon
              ),
              NavigationTextButton(
                onTap: () => controller.selectTab(1, context),

                text: 'About Me',
                icon: Iconsax.user, // Profile or user icon
              ),
              NavigationTextButton(
                onTap: () => controller.selectTab(2, context),
                text: 'Projects',
                icon: Iconsax.folder, // Folder or projects icon
              ),
              NavigationTextButton(
                onTap: () => controller.selectTab(3, context),
                text: 'Experience',
                icon: Iconsax.briefcase, // Briefcase or work experience icon
              ),
              NavigationTextButton(
                onTap: () => controller.selectTab(4, context),
                text: 'Contact Me',
                icon: Iconsax.call, // Call or contact icon
              ),
            ],
          ),
        );
      },
    );
  }
}
