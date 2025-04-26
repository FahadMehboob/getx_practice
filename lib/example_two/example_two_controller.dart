import 'package:get/get.dart';

class ExampleTwoController extends GetxController {
  RxDouble opacity = 0.8.obs;

  void setOpacity(double value) {
    opacity.value = value;
  }
}
