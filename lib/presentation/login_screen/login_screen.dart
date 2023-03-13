import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/widgets/custom_button.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.blueA400,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.blueA400,
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.cyan600,
                ColorConstant.deepPurple500,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 36,
              top: 34,
              right: 36,
              bottom: 34,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_pact_sign_in".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBlack2817,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 13,
                      top: 16,
                    ),
                    child: Text(
                      "lbl_name".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBlack16,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    71,
                  ),
                  width: getHorizontalSize(
                    303,
                  ),
                  margin: getMargin(
                    top: 11,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.lightBlue400,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 13,
                      top: 12,
                    ),
                    child: Text(
                      "lbl_email".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBlack16,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    76,
                  ),
                  width: getHorizontalSize(
                    302,
                  ),
                  margin: getMargin(
                    top: 9,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.lightBlue400,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    56,
                  ),
                  text: "lbl_sign_in".tr,
                  margin: getMargin(
                    left: 32,
                    top: 37,
                    right: 31,
                  ),
                  variant: ButtonVariant.FillPurple900,
                  padding: ButtonPadding.PaddingAll16,
                ),
                Padding(
                  padding: getPadding(
                    top: 28,
                    bottom: 5,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_new_user".tr,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_get_started".tr,
                          style: TextStyle(
                            color: ColorConstant.cyanA400,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
