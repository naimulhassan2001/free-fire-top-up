import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled/controllers/main_controller.dart';
import 'package:untitled/view/component/text/common_text.dart';
import 'package:untitled/view/screen/common_screen/profile/profile_screen.dart';
import 'package:untitled/view/screen/home/home_screen.dart';
import 'package:untitled/view/screen/order/my_order_screen.dart';

import '../component/bottom_nav_bar/common_bottom_bar.dart';
import 'add_money/add_money.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List screen = [
    HomeScreen(),
    AddMoney(),
    MyOrderScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(
          text: "Free Fire Dimond Top Up",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: GetBuilder<MainController>(
        builder: (controller) => screen[controller.index],
      ),
      bottomNavigationBar: const CommonBottomNavBar(),
    );
  }
}
