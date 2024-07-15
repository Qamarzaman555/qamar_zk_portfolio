import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../model/project_model.dart';
import '../../res/constants.dart';
import '../../view model/getx_controllers/projects_controller.dart';
import '../../view model/responsive.dart';
import 'components/project_info.dart';
import 'components/title_text.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const CombinePojectsTitle(),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  CarouselSlider.builder(
                    carouselController: controller.carouselController,
                    itemCount: projectList.length,
                    itemBuilder: (context, index, realIndex) {
                      return Obx(
                        () => AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.symmetric(
                            vertical: defaultPadding,
                            horizontal: defaultPadding,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.pinkAccent,
                                Colors.blue,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink,
                                offset: const Offset(-2, 0),
                                blurRadius: controller.hovers[index] ? 20 : 10,
                              ),
                              BoxShadow(
                                color: Colors.blue,
                                offset: const Offset(2, 0),
                                blurRadius: controller.hovers[index] ? 20 : 10,
                              ),
                            ],
                          ),
                          child: ProjectStack(index: index),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        controller.currentPage.value = index;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Obx(
                    () => AnimatedSmoothIndicator(
                      activeIndex: controller.currentPage.value,
                      count: projectList.length,
                      effect: const WormEffect(
                        dotHeight: 12,
                        dotWidth: 12,
                        activeDotColor: Colors.pinkAccent,
                        dotColor: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
