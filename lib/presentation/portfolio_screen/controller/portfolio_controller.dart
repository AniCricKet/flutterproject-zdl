import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/presentation/portfolio_screen/models/portfolio_model.dart';

class PortfolioController extends GetxController {
  Rx<PortfolioModel> portfolioModelObj = PortfolioModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
