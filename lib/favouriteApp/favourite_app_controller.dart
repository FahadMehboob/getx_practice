import 'package:get/get.dart';

class FavouriteAppController extends GetxController {
  RxList<String> fruitList = ['orange', 'Apple', 'Mango', 'Banana'].obs;
  RxList favouriteList = [].obs;

  void addFavourite(String value) {
    favouriteList.add(value);
  }

  void removeFavourite(String value) {
    favouriteList.remove(value);
  }
}
