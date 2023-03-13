import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        child: Container(
          decoration: AppDecoration.fillDeeppurple600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: getPadding(
                  top: 14,
                  right: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        27,
                      ),
                      width: getHorizontalSize(
                        32,
                      ),
                      margin: getMargin(
                        top: 1,
                        bottom: 7,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgUimiscradius,
                            height: getVerticalSize(
                              27,
                            ),
                            width: getHorizontalSize(
                              32,
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowdownCyanA400,
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
                    Container(
                      height: getVerticalSize(
                        35,
                      ),
                      width: getHorizontalSize(
                        262,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: getHorizontalSize(
                                262,
                              ),
                              margin: getMargin(
                                top: 8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 12,
                                    ),
                                    child: Obx(
                                      () => Text(
                                        homeItemModelObj.amountTxt.value,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextRegular12,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      bottom: 10,
                                    ),
                                    child: Obx(
                                      () => Text(
                                        homeItemModelObj
                                            .amountreceivedTxt.value,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProDisplayBold14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 1,
                              ),
                              child: Obx(
                                () => Text(
                                  homeItemModelObj.carbonFootprintOneTxt.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
    );
  }
}
