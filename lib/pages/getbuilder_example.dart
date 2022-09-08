import 'package:flutter/material.dart';
import 'package:flutter_training/controllers/valuecontroller.dart';
import 'package:get/get.dart';

import '../controllers/getbuilder_example_controller.dart';

class GetBuilderExample extends StatelessWidget {
  const GetBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountController controller = Get.put(CountController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Use of GetBuilder & Getx"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              GetBuilder<CountController>(
                builder: (controller) {
                  return Text(
                    "Incremented value ${controller.count}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),
              FlatButton(
                onPressed: () {
                  controller.incrementValue();
                },
                child: Text(
                  "Getbuilder",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                color: Colors.lightGreen,
              ),
              SizedBox(
                height: 300,
              ),
              GetX<ValueController>(
                init: ValueController(),
                builder: (_) {
                  return Text(
                    "Fetch value: ${_.valueModel.value.value1}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  );
                },
              ),
              Padding(padding: EdgeInsets.all(5)),
              Text(
                "Getx Example",
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
