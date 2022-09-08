import 'package:flutter/material.dart';
import 'package:flutter_training/controllers/home_controllers.dart';
import 'package:flutter_training/pages/getbuilder_example.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Clicks: ${homeController.count}")),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => {Get.to(GetBuilderExample())}, child: Text("GetBuilderExample")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () =>homeController.increment(),
      ),
    );
  }
}
