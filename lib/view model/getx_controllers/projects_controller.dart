import 'package:get/get.dart';

class ProjectController extends GetxController {
  RxList<bool> hovers = List.generate(9, (_) => false).obs;

  onHover(int index, bool value) {
    hovers[index] = value;
  }
}
