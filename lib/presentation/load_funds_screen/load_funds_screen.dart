import 'controller/load_funds_controller.dart';
import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/widgets/custom_button.dart';

class LoadFundsScreen extends GetWidget<LoadFundsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueA400,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  margin: getMargin(
                    bottom: 6,
                  ),
                  padding: getPadding(
                    left: 19,
                    top: 28,
                    right: 19,
                    bottom: 28,
                  ),
                  decoration: AppDecoration.gradientCyan600Deeppurple5001,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(
                            left: 21,
                          ),
                          child: Text(
                            "msg_global_warming_countdown".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterRegular24WhiteA700,
                          ),
                        ),
                      ),
                      Spacer(),
                      CustomButton(
                        height: getVerticalSize(
                          56,
                        ),
                        text: "lbl_return_to_home".tr,
                        margin: getMargin(
                          left: 11,
                          right: 11,
                          bottom: 16,
                        ),
                        fontStyle: ButtonFontStyle.InterRegular14,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
