import 'package:get/get.dart';

import '../controllers/my_data_controller.dart';

class MyDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyDataController>(
      () => MyDataController(),
    );
  }
}
