import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/presentation/load_funds_screen/models/load_funds_model.dart';

class LoadFundsController extends GetxController {
  Rx<LoadFundsModel> loadFundsModelObj = LoadFundsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
