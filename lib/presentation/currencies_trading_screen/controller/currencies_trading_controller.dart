import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/presentation/currencies_trading_screen/models/currencies_trading_model.dart';
import 'package:zero_degree_lab_s_calculator/widgets/custom_bottom_bar.dart';

class CurrenciesTradingController extends GetxController {
  Rx<CurrenciesTradingModel> currenciesTradingModelObj =
      CurrenciesTradingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
