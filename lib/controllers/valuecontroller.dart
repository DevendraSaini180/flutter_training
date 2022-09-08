import 'package:flutter_training/models/valuemodels.dart';
import 'package:get/get.dart';

class ValueController extends GetxController {

  final valueModel = ValueModel().obs;

  updateValues(String newValue1) {
    valueModel.update((value) {
      value?.value1 = newValue1;
    });
  }
}