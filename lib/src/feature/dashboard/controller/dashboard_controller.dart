
import 'package:get/get.dart';
class DashboardController extends GetxController{
  RxInt selected = 0.obs;

  void onChangeScreens(value) {
    selected.value = value;
  }

  void onBack() {
    selected.value=0;
  }



}
