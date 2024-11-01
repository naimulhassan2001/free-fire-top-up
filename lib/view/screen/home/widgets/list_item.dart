import 'package:flutter/material.dart';
import 'package:untitled/helpers/my_extension.dart';
import 'package:untitled/utils/app_colors.dart';
import 'package:untitled/utils/app_images.dart';
import 'package:untitled/view/component/image/common_image.dart';
import 'package:untitled/view/component/text/common_text.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 5)),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: ClipOval(
              child: CommonImage(
                imageSrc: AppImages.freeFireLogo,
                imageType: ImageType.png,
                height: 48,
                width: 48,
              ),
            ),
          ),
          20.width,
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: "Naimul Hassan",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                CommonText(
                  text: "250 Diamond",
                ),
                CommonText(
                  text: "UniPin",
                ),
                CommonText(
                  text: "20 tk",
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                color: AppColors.green.withOpacity(0.9),
                borderRadius: BorderRadius.circular(16)),
            child: const CommonText(
              text: "Completed",
            ).end,
          ),
        ],
      ),
    );
  }
}
