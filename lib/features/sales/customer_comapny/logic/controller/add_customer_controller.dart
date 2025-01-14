import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCustomerController extends GetxController {
  double sliderValue = 0;
  TextEditingController name = TextEditingController();

  String radio2 = "";
  String radio1 = "";

  void changeSliderValue(double value) {
    sliderValue = value;
    update(['slider']);
  }

  setRadio1(String v) {
    radio1 = v;
    update(['radio1']);
  }

  setRadio2(String v) {
    radio2 = v;
    update(['radio2']);
  }
}
