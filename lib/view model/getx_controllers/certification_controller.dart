import 'package:get/get.dart';

class CertificationController extends GetxController {
  RxList<bool> hovers = List.generate(13, (_) => false).obs;
  onHover(int index, bool value) {
    hovers[index] = value;
  }
}
