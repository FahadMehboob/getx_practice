import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/favouriteApp/favourite_app_controller.dart';

class FavouriteApp extends StatefulWidget {
  const FavouriteApp({super.key});

  @override
  State<FavouriteApp> createState() => _FavouriteAppState();
}

class _FavouriteAppState extends State<FavouriteApp> {
  final FavouriteAppController controller = Get.put(FavouriteAppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  onTap: () {
                    if (controller.favouriteList
                        .contains(controller.fruitList[index])) {
                      controller.removeFavourite(controller.fruitList[index]);
                    } else {
                      controller.addFavourite(controller.fruitList[index]);
                    }
                  },
                  title: Text(controller.fruitList[index]),
                  trailing: Obx(() {
                    return Icon(
                      Icons.favorite,
                      color: controller.favouriteList
                              .contains(controller.fruitList[index])
                          ? Colors.white
                          : Colors.red,
                    );
                  })));
        },
      ),
    );
  }
}
