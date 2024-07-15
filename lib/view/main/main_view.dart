import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view%20model/controller.dart';
import '../../view/main/components/navigation_bar.dart';
import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomPageController());
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
              child: TopNavigationBar(),
            ),
            if (Responsive.isLargeMobile(context))
              const Row(
                children: [Spacer(), NavigationButtonList(), Spacer()],
              ),
            Expanded(
              flex: 9,
              child: ListView.builder(
                controller: controller.scrollController,
                itemCount: controller.screens.length,
                itemBuilder: (context, index) {
                  return controller.screens[index];
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Obx(
        () => controller.offset.value > 0
            ? FloatingActionButton.small(
                backgroundColor: const Color(0xff353333),
                onPressed: () {
                  controller.selectTab(0, context);
                },
                child: const Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
