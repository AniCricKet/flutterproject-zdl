import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/presentation/dash_board_screen/models/dash_board_model.dart';

class DashBoardController extends GetxController {
  Rx<DashBoardModel> dashBoardModelObj = DashBoardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
