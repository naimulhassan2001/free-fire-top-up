import 'package:flutter/material.dart';
import 'package:untitled/helpers/my_extension.dart';
import 'package:untitled/utils/app_string.dart';
import 'package:untitled/view/component/text/common_text.dart';

import '../home/widgets/list_item.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CommonText(
              text: AppString.myOrders,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              bottom: 20,
            ).start,
            ListView.builder(
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => const ListItem(),
            )
          ],
        ),
      ),
    );
  }
}
