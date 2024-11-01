import 'package:flutter/material.dart';
import 'package:untitled/helpers/my_extension.dart';
import 'package:untitled/utils/app_string.dart';
import 'package:untitled/view/component/button/common_button.dart';
import 'package:untitled/view/component/text/common_text.dart';
import 'package:untitled/view/component/text_field/common_text_field.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../utils/app_colors.dart';

class AddMoney extends StatefulWidget {
  AddMoney({super.key});

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'Q5nZ91pBMyM',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
              child: Column(
                children: [
                  const CommonText(
                    text: AppString.addMoney,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    bottom: 20,
                  ),
                  const CommonText(
                    text: AppString.amount,
                    bottom: 8,
                  ).start,
                  CommonTextField(
                    hintText: AppString.amount,
                  ),
                  20.height,
                  const CommonButton(
                    titleText: AppString.addMoney,
                    buttonHeight: 48,
                    buttonColor: AppColors.black,
                  )
                ],
              ),
            ),
            50.height,
            Container(
              padding: const EdgeInsets.all(8),
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
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
                progressColors: const ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
                onReady: () {
                  _controller.addListener(
                    () {
                      if (mounted) {
                        setState(() {});
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
