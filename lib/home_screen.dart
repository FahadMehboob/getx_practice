import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/ImagePicker/image_picker.dart';
import 'package:getx_practice/LoginApi/login_api.dart';
import 'package:getx_practice/counterApp/counter_app.dart';
import 'package:getx_practice/example_three/example_three.dart';
import 'package:getx_practice/example_two/example_two.dart';
import 'package:getx_practice/screens/screen_one.dart';

import 'favouriteApp/favourite_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Practice"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text("Getx Dialog Alret"),
              subtitle: const Text("Gext dialog alert"),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete',
                    middleText: 'Are you sure you want to delete this chat?',
                    titlePadding: const EdgeInsets.only(top: 20),
                    textConfirm: 'Yes',
                    textCancel: 'No',
                    contentPadding: const EdgeInsets.all(20));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Getx Bottom Sheet"),
              subtitle: const Text("Gext Bottom Sheet"),
              onTap: () {
                Get.bottomSheet(
                    backgroundColor: Colors.amber,
                    Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ));
              },
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.to(() => const ScreenOne());
              },
              title: const Text("Getx Go to One Screen"),
              subtitle: const Text("Gext One Screen"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.to(() => CounterApp());
              },
              title: const Text("Getx Counter App"),
              subtitle: const Text("Gext Counter App"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.to(() => const ExampleTwo());
              },
              title: const Text("Getx Example Two"),
              subtitle: const Text("Gext Example Two"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.to(() => const ExampleThree());
              },
              title: const Text("Getx Example Three"),
              subtitle: const Text("Gext Example Three"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.to(() => const FavouriteApp());
              },
              title: const Text("Getx Favourite App"),
              subtitle: const Text("Gext Favourite App"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.to(() => const ImagePickerScreen());
              },
              title: const Text("Getx Image Picker"),
              subtitle: const Text("Gext Image Picker"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.to(() => const LoginApi());
              },
              title: const Text("Getx Login Api"),
              subtitle: const Text("Gext Login Api"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Error", 'Error Occured Due to this');
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
