import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/controllers/main_controller.dart';
import '../../../helpers/app_routes.dart';
import '../../../utils/app_colors.dart';
import '../text/common_text.dart';

class CommonBottomNavBar extends StatefulWidget {
  const CommonBottomNavBar({super.key});
  @override
  State<CommonBottomNavBar> createState() => _CommonBottomNavBarState();
}

class _CommonBottomNavBarState extends State<CommonBottomNavBar> {
  List<Widget> unselectedIcons = [
    const Icon(Icons.home_outlined, color: AppColors.grey),
    const Icon(Icons.add_circle_outline_outlined, color: AppColors.grey),
    const Icon(Icons.shopping_cart_outlined, color: AppColors.grey),
    const Icon(Icons.person_2_outlined, color: AppColors.grey),
  ];

  List<Widget> selectedIcons = [
    const Icon(Icons.home_filled, color: AppColors.black),
    const Icon(Icons.add_circle_outlined, color: AppColors.black),
    const Icon(Icons.shopping_cart_rounded, color: AppColors.black),
    const Icon(Icons.person, color: AppColors.black),
  ];

  List titleList = [
    "Home",
    "Add Money",
    "My Order",
    "profile",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: GetBuilder<MainController>(
        builder: (controller) => Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: EdgeInsets.all(12.sp),
          decoration: BoxDecoration(
              color: AppColors.blueLight,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(unselectedIcons.length, (index) {
              return GestureDetector(
                onTap: () {
                  controller.changeIndex(index);
                },
                child: Container(
                  margin: EdgeInsetsDirectional.all(12.sp),
                  child: Column(
                    children: [
                      index == controller.index
                          ? selectedIcons[index]
                          : unselectedIcons[index],
                      CommonText(
                        text: titleList[index],
                        color: index == controller.index
                            ? AppColors.black
                            : AppColors.grey,
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
