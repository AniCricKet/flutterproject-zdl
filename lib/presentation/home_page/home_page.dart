import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';
import 'package:zero_degree_lab_s_calculator/widgets/app_bar/appbar_image.dart';
import 'package:zero_degree_lab_s_calculator/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: getVerticalSize(
            680,
          ),
          width: double.maxFinite,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    680,
                  ),
                  width: double.maxFinite,
                  decoration: AppDecoration.fillGray10001,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: getPadding(
                            top: 14,
                            bottom: 14,
                          ),
                          decoration:
                              AppDecoration.gradientCyan600Deeppurple5001,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                height: getVerticalSize(
                                  39,
                                ),
                                leadingWidth: 56,
                                leading: AppbarImage(
                                  height: getVerticalSize(
                                    26,
                                  ),
                                  width: getHorizontalSize(
                                    16,
                                  ),
                                  svgPath: ImageConstant.imgArrowdown,
                                  margin: getMargin(
                                    left: 40,
                                  ),
                                ),
                                actions: [
                                  AppbarImage(
                                    height: getSize(
                                      20,
                                    ),
                                    width: getSize(
                                      20,
                                    ),
                                    svgPath: ImageConstant.imgComputer,
                                    margin: getMargin(
                                      left: 30,
                                      top: 1,
                                      right: 5,
                                    ),
                                  ),
                                  AppbarImage(
                                    height: getSize(
                                      20,
                                    ),
                                    width: getSize(
                                      20,
                                    ),
                                    svgPath: ImageConstant.imgNotification,
                                    margin: getMargin(
                                      left: 20,
                                      top: 1,
                                      right: 35,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: getHorizontalSize(
                                  243,
                                ),
                                margin: getMargin(
                                  left: 38,
                                  top: 20,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_hello".tr,
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(
                                            24,
                                          ),
                                          fontFamily: 'Cutive',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_hema_rajendran".tr,
                                        style: TextStyle(
                                          color: ColorConstant.purple90001,
                                          fontSize: getFontSize(
                                            24,
                                          ),
                                          fontFamily: 'Cutive',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: getMargin(
                                    left: 35,
                                    top: 14,
                                    right: 25,
                                  ),
                                  padding: getPadding(
                                    left: 40,
                                    top: 14,
                                    right: 40,
                                    bottom: 14,
                                  ),
                                  decoration:
                                      AppDecoration.fillPurple90001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                        ),
                                        child: Text(
                                          "msg_carbon_footprint".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular16,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl_xxx_xx".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular36,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 13,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_you_have".tr,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "lbl_improved".tr,
                                                style: TextStyle(
                                                  color: ColorConstant.tealA200,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "lbl_from_last_month".tr,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
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
                              Padding(
                                padding: getPadding(
                                  left: 38,
                                  top: 21,
                                ),
                                child: Text(
                                  "lbl_history".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInriaSansRegular20,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 30,
                                    top: 21,
                                    right: 24,
                                  ),
                                  child: Obx(
                                    () => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: getVerticalSize(
                                            266,
                                          ),
                                        );
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList[index];
                                        return HomeItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: getMargin(
                            left: 30,
                            right: 30,
                          ),
                          decoration: AppDecoration.fillBluegray800,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                  right: 4,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: getSize(
                                        32,
                                      ),
                                      width: getSize(
                                        32,
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                        bottom: 8,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgUimiscradius,
                                            height: getSize(
                                              32,
                                            ),
                                            width: getSize(
                                              32,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                            height: getSize(
                                              16,
                                            ),
                                            width: getSize(
                                              16,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "msg_lite_coin_indonesia".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtSFProDisplayBold14WhiteA70001,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 11,
                                                ),
                                                child: Text(
                                                  "msg_sent_1_jan_2020".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProTextRegular12Gray100,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 32,
                                                  bottom: 14,
                                                ),
                                                child: Text(
                                                  "lbl_1_33_ltc".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: AppStyle
                                                      .txtSFProDisplayBold14WhiteA70001,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.gray60061,
                                ),
                              ),
                            ],
                          ),
                        ),
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
