import 'package:get/get.dart';

import '../controllers/image_items_description_controller.dart';

class ImageItemsDescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageItemsDescriptionController>(
      () => ImageItemsDescriptionController(),
    );
  }
}
