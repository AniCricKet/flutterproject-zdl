import '../controller/portfolio_one_controller.dart';
import 'package:get/get.dart';

class PortfolioOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PortfolioOneController());
  }
}
