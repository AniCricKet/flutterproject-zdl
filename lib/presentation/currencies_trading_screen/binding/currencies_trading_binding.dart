import '../controller/currencies_trading_controller.dart';
import 'package:get/get.dart';

class CurrenciesTradingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrenciesTradingController());
  }
}
