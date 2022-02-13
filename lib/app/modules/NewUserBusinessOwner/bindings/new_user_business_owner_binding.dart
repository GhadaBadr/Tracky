import 'package:get/get.dart';

import '../controllers/new_user_business_owner_controller.dart';

class NewUserBusinessOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewUserBusinessOwnerController>(
      () => NewUserBusinessOwnerController(),
    );
  }
}
