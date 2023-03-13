import 'controller/currencies_trading_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/presentation/home_page/home_page.dart';
import 'package:zero_degree_lab_s_calculator/widgets/app_bar/appbar_image.dart';
import 'package:zero_degree_lab_s_calculator/widgets/app_bar/custom_app_bar.dart';
import 'package:zero_degree_lab_s_calculator/widgets/custom_bottom_bar.dart';

class CurrenciesTradingTwoScreen
    extends GetWidget<CurrenciesTradingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillBlueA400,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(top: 24, bottom: 24),
                          decoration:
                              AppDecoration.gradientCyan600Deeppurple5001,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(21),
                                    leadingWidth: 52,
                                    leading: AppbarImage(
                                        height: getSize(20),
                                        width: getSize(20),
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(left: 32, top: 1),
                                        onTap: onTapArrowleft),
                                    title: Padding(
                                        padding: getPadding(left: 8),
                                        child: Text("msg_currencies_trading".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayBold16WhiteA700))),
                                Container(
                                    height: getVerticalSize(577),
                                    width: getHorizontalSize(315),
                                    margin: getMargin(top: 40, bottom: 80),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.purple90001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(12))))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: getVerticalSize(53),
                          width: getHorizontalSize(315),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 48),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(top: 14),
                                                    child: Text(
                                                        "lbl_0_30462_eth".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProTextRegular12Gray100)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: getVerticalSize(20),
                                                    width:
                                                        getHorizontalSize(19),
                                                    margin:
                                                        getMargin(bottom: 14))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: ColorConstant.gray50061))
                                    ])),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 48),
                                    child: Text("lbl_ethereum".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSFProDisplayBold16WhiteA70001))),
                            CustomImageView(
                                svgPath: ImageConstant.imgCloseYellow900,
                                height: getVerticalSize(32),
                                width: getHorizontalSize(31),
                                alignment: Alignment.topLeft,
                                margin: getMargin(top: 5))
                          ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Tabnavigation32x24:
        return "/";
      case BottomBarEnum.Videocamera:
        return "/";
      case BottomBarEnum.Car:
        return AppRoutes.homePage;
      case BottomBarEnum.Globe:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleft() {
    Get.back();
  }
}
