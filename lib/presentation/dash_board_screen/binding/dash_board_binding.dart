import '../controller/dash_board_controller.dart';
import 'package:get/get.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashBoardController());
  }
}
