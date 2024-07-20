import 'package:flutter/material.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/data/projects_data.dart';
import 'project_deatail.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/app_colors.dart.dart';
import '../../../controllers/projects_controller.dart';
import 'image_viewer.dart';

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        ImageViewer(context, ProjectsData.projectList[index].image);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.only(
            left: AppSizes.defaultPadding,
            right: AppSizes.defaultPadding,
            top: AppSizes.defaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: AppColors.bgColor),
        duration: const Duration(milliseconds: 500),
        child: ProjectDetail(
          index: index,
        ),
      ),
    );
  }
}