import 'controller/portfolio_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/widgets/app_bar/appbar_image.dart';
import 'package:zero_degree_lab_s_calculator/widgets/app_bar/custom_app_bar.dart';

class PortfolioOneScreen extends GetWidget<PortfolioOneController> {
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
                              left: 125, top: 328, right: 125, bottom: 328),
                          decoration:
                              AppDecoration.gradientCyan600Deeppurple5001,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 80),
                                    child: Text("lbl_dashboard2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular24))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: getPadding(top: 28, bottom: 28),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup16),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(152),
                                    leadingWidth: 52,
                                    leading: AppbarImage(
                                        height: getSize(20),
                                        width: getSize(20),
                                        svgPath:
                                            ImageConstant.imgArrowleftGray100,
                                        margin: getMargin(left: 32),
                                        onTap: onTapArrowleft1),
                                    actions: [
                                      AppbarImage(
                                          height: getSize(20),
                                          width: getSize(20),
                                          svgPath:
                                              ImageConstant.imgOverflowmenu,
                                          margin:
                                              getMargin(left: 36, right: 36))
                                    ])
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: getMargin(left: 30, top: 94, right: 30),
                          padding: getPadding(
                              left: 53, top: 34, right: 53, bottom: 34),
                          decoration: AppDecoration.fillPurple90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("msg_your_carbon_footprint".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular20),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 50),
                                    child: Text("lbl_xxx".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
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

  onTapArrowleft1() {
    Get.back();
  }

  onTapImgFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }
}
