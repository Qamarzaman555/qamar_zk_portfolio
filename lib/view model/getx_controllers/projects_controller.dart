import 'package:get/get.dart';
import 'package:carousel_slider/carousel_controller.dart';
import '../../model/project_model.dart';

class ProjectController extends GetxController {
  final CarouselController carouselController = CarouselController();
  var hovers = <bool>[].obs;
  var currentPage = 0.obs;

  @override
  void onInit() {
    hovers.addAll(List.filled(projectList.length, false));
    super.onInit();
  }

  void onHover(int index, bool isHovered) {
    hovers[index] = isHovered;
  }
}
