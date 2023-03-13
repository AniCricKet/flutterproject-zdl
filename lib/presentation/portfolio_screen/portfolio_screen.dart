import 'controller/portfolio_controller.dart';
import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/widgets/custom_button.dart';

class PortfolioScreen extends GetWidget<PortfolioController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillGray10001,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 48, top: 109, right: 48, bottom: 109),
                          decoration:
                              AppDecoration.gradientCyan600Deeppurple5001,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                Text("msg_existing_health".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular24),
                                Padding(
                                    padding: getPadding(top: 95),
                                    child: Text("msg_our_health_research".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular24)),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    text: "lbl_dashboard2".tr,
                                    margin:
                                        getMargin(left: 26, top: 70, right: 13),
                                    fontStyle:
                                        ButtonFontStyle.InterRegular14WhiteA700)
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: getPadding(
                              left: 50, top: 66, right: 50, bottom: 66),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup16),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 37),
                                    child: Text("msg_your_health_impact".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular30))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: getMargin(left: 30, top: 123, right: 30),
                          padding: getPadding(
                              left: 40, top: 26, right: 40, bottom: 26),
                          decoration: AppDecoration.fillPurple90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_you_ve_impacted".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular30),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Text("lbl_xxx".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular30)),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Text("msg_children_globally".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtInterRegular30))
                              ])))
                ])),
            bottomNavigationBar: Container(
                margin: getMargin(right: 1),
                padding: getPadding(left: 13, right: 13),
                decoration: AppDecoration.outlineBlack9004c,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgFacebook,
                          height: getVerticalSize(52),
                          width: getHorizontalSize(48),
                          margin: getMargin(top: 13, bottom: 30),
                          onTap: () {
                            onTapImgFacebook();
                          }),
                      CustomImageView(
                          svgPath: ImageConstant.imgTabnavigation,
                          height: getVerticalSize(78),
                          width: getHorizontalSize(75),
                          margin: getMargin(left: 13, bottom: 17)),
                      CustomImageView(
                          svgPath: ImageConstant.imgTicket,
                          height: getVerticalSize(26),
                          width: getHorizontalSize(24),
                          margin: getMargin(left: 38, top: 21, bottom: 48)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGlobenetwork1294,
                          height: getVerticalSize(26),
                          width: getHorizontalSize(24),
                          margin: getMargin(left: 39, top: 21, bottom: 48)),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgUserDeepPurpleA10001,
                          height: getVerticalSize(26),
                          width: getHorizontalSize(24),
                          margin: getMargin(top: 21, right: 12, bottom: 48))
                    ]))));
  }

  onTapImgFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }
}
