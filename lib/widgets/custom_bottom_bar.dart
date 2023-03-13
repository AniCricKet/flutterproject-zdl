import 'package:flutter/material.dart';
import 'package:zero_degree_lab_s_calculator/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgTabnavigation32x24,
      type: BottomBarEnum.Tabnavigation32x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVideocamera,
      type: BottomBarEnum.Videocamera,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCar,
      type: BottomBarEnum.Car,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGlobe,
      type: BottomBarEnum.Globe,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.purple90001,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.black9004c,
              spreadRadius: getHorizontalSize(
                2,
              ),
              blurRadius: getHorizontalSize(
                2,
              ),
              offset: Offset(
                0,
                0,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  24,
                ),
              ),
              activeIcon: Container(
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgForward,
                      height: getSize(
                        48,
                      ),
                      width: getSize(
                        48,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      svgPath: bottomMenuList[index].icon,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      color: ColorConstant.whiteA700,
                      alignment: Alignment.center,
                      margin: getMargin(
                        all: 12,
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Tabnavigation32x24,
  Videocamera,
  Car,
  Globe,
  User,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
