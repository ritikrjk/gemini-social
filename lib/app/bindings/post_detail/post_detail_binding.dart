import 'package:get/get.dart';
import 'package:gemini_social/app/controllers/post_detail/post_detail_controller.dart';

class PostDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostDetailController>(() => PostDetailController());
  }
}
