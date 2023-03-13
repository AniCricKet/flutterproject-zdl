import '../controller/load_funds_controller.dart';
import 'package:get/get.dart';

class LoadFundsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadFundsController());
  }
}
