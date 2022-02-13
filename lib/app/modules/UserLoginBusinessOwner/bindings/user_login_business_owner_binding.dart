import 'package:get/get.dart';

import '../controllers/user_login_business_owner_controller.dart';

class UserLoginBusinessOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserLoginBusinessOwnerController>(
      () => UserLoginBusinessOwnerController(),
    );
  }
}
