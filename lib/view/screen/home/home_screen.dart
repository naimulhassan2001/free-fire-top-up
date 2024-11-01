import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/helpers/my_extension.dart';
import 'package:untitled/utils/app_images.dart';
import 'package:untitled/utils/app_string.dart';
import 'package:untitled/view/component/image/common_image.dart';
import 'package:untitled/view/component/text/common_text.dart';

import 'widgets/list_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List itemList = [
    AppImages.uniPin,
    AppImages.uid,
    AppImages.weekly,
    AppImages.weekly,
    AppImages.uid,
    AppImages.uniPin,
    AppImages.uid,
    AppImages.uniPin,
    AppImages.weekly,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.black87, borderRadius: BorderRadius.circular(16)),
          child: const CommonText(
            text:
            AppString.topUpDetails,
            maxLines: 1000,
            color: Colors.white,
            textAlign: TextAlign.start,
          ),
        ),
        20.height,
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            height: 150,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            autoPlayCurve: Curves.easeInOut,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              // currentIndex.value = index;
            },
          ),
          items: [
            CommonImage(
              imageSrc: AppImages.freeFire,
              imageType: ImageType.png,
              height: 100,
              width: double.infinity,
            ),
            CommonImage(
              imageSrc: AppImages.diamond,
              imageType: ImageType.png,
              height: 100,
              width: double.infinity,
            ),
            CommonImage(
              imageSrc: AppImages.discount,
              imageType: ImageType.png,
              height: 100,
              width: double.infinity,
            ),
            CommonImage(
              imageSrc: AppImages.topUp,
              imageType: ImageType.png,
              height: 100,
              width: double.infinity,
            )
          ],
        ),
        const CommonText(
          text: AppString.freFire,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          top: 30,
          bottom: 20,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: itemList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
          itemBuilder: (context, index) => CommonImage(
            imageSrc: itemList[index],
            imageType: ImageType.png,
          ),
        ),
        const CommonText(
          text: AppString.latestOrders,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          top: 20,
          bottom: 20,
        ),
        ListView.builder(
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => const ListItem(),
        )
      ]),
    ));
  }
}
