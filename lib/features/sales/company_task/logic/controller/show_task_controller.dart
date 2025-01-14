import 'package:get/get.dart';

class ShowTaskController extends GetxController {
  double sliderValue = 0;

  void changeSliderValue(double value) {
    sliderValue = value;
    update();
  }
}
