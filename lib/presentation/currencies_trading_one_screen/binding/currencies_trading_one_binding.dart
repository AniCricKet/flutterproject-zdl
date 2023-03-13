import '../controller/currencies_trading_one_controller.dart';
import 'package:get/get.dart';

class CurrenciesTradingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrenciesTradingOneController());
  }
}
