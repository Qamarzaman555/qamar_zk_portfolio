import 'package:flutter/material.dart';
import '../../view/certifications/certifications.dart';
import '../../view/intro/introduction.dart';
import '../../view/main/main_view.dart';
import '../../view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      ProjectsView(),
      Certifications(),
    ]);
  }
}
