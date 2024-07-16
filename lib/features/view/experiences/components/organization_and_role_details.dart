import 'package:flutter/material.dart';

import '../../../../utils/data/projects_data.dart';
import '../../../controllers/experience_controller.dart';

class OrganizationAndRole extends StatelessWidget {
  const OrganizationAndRole({
    super.key,
    required this.controller,
    required this.index,
  });

  final ExperienceController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      top: controller.hovers[index] ? 0 : 60,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          color: controller.hovers[index] ? Colors.black12 : Colors.white54,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(controller.hovers[index] ? 30 : 0),
            topRight: Radius.circular(controller.hovers[index] ? 30 : 0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ProjectsData.certificateList[index].name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ProjectsData.certificateList[index].organization,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black45,
              ),
            ),
            Text(
              ProjectsData.certificateList[index].date,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
