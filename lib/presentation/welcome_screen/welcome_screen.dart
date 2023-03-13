import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.lightGreen200,
                      ColorConstant.blue400,
                      ColorConstant.blueA700
                    ])),
                child: Container(
                    height: size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup53,
                          height: getVerticalSize(294),
                          width: getHorizontalSize(375),
                          alignment: Alignment.bottomCenter),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              padding: getPadding(
                                  left: 2, top: 192, right: 2, bottom: 192),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup18),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Text("lbl_welcome_to".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMagra32))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: getHorizontalSize(304),
                              margin: getMargin(bottom: 245),
                              child: Text("msg_personal_action".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtLivvicRegular32))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: getPadding(top: 277, right: 37),
                              child: Text("lbl_pact".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBlack100)))
                    ])))));
  }
}
