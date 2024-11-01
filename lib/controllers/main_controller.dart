

import 'package:get/get.dart';

class MainController extends GetxController {

  int index = 0 ;


  changeIndex(int i) {
    index = i ;
    update();
  }
}