import '../controller/currencies_trading_two_controller.dart';
import 'package:get/get.dart';

class CurrenciesTradingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrenciesTradingTwoController());
  }
}
