import 'package:flutter/material.dart';
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
        title: Text("Use of GetBuilder"),
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
                  "Increase Value",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                color: Colors.lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
