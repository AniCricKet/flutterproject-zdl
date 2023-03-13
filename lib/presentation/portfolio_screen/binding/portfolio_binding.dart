import '../controller/portfolio_controller.dart';
import 'package:get/get.dart';

class PortfolioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PortfolioController());
  }
}
