import 'package:get/get.dart';

class ExampleThreeController extends GetxController {
  RxBool notification = false.obs;

  void setNotification(bool value) {
    notification.value = value;
  }
}
