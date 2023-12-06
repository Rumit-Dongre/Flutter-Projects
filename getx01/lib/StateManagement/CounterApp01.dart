import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt count = 0.obs;
  RxString name = "".obs;
}

class CounterApp01 extends StatelessWidget {
  Controller counterController = Get.put(Controller());
  TextEditingController nm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Text(counterController.count.value.toString()),
          ),
          Obx(
            () => Text(counterController.name.value.toString()),
          ),
          Container(
            child: TextField(
              onChanged: (value) {
                counterController.name.value = value;
                print(GetPlatform.isAndroid);
              },
              decoration: InputDecoration(
                hintText: "Enter Name",
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                counterController.count++;
                print(counterController.count);
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              child: Text("data"))
        ],
      ),
    );
  }
}
