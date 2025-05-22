import 'package:fitness_app_ui_design/utilis/color_const.dart';
import 'package:fitness_app_ui_design/utilis/image_const.dart';
import 'package:fitness_app_ui_design/utilis/text_const.dart';
import 'package:fitness_app_ui_design/utilis/text_style_const.dart';
import 'package:fitness_app_ui_design/widgets/best_for_you_list.dart';
import 'package:fitness_app_ui_design/widgets/fast_warm_up_list.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  image: DecorationImage(
                    image: AssetImage(ImageConst.exploreBanner),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        TextConst.exploreBanner,
                        style: AppTextStyles.headingBold.copyWith(
                          color: AppColors.background,
                        ),
                      ),
                      Text(TextConst.seemore, style: AppTextStyles.seeMoreLink),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                TextConst.bestForYou,
                style: AppTextStyles.headingBold,
              ),
            ),
            const SizedBox(height: 20),
            bestForYouListView(context: context),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                TextConst.challenge,
                style: AppTextStyles.headingBold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryLime,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: Container(
                                //alignment: Alignment(10, -50),
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                  //color: AppColors.background,
                                  image: DecorationImage(
                                    image: AssetImage(ImageConst.flameIcon),
                                    fit: BoxFit.contain,
                                    opacity: 0.6,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 12,
                              left: 10,
                              child: Text(
                                TextConst.plankChallenge,
                                style: AppTextStyles.bodyRegularLato,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryDark,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: Container(
                                //alignment: Alignment(10, -50),
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                  //color: AppColors.background,
                                  image: DecorationImage(
                                    image: AssetImage(ImageConst.sprintIcon),
                                    fit: BoxFit.contain,
                                    opacity: 0.6,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 12,
                              left: 10,
                              child: Text(
                                TextConst.sprintChallenge,
                                style: AppTextStyles.bodyRegularLato.copyWith(
                                  color: AppColors.forground,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.forground,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: Container(
                                //alignment: Alignment(10, -50),
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                  //color: AppColors.background,
                                  image: DecorationImage(
                                    image: AssetImage(ImageConst.bottleIcon),
                                    fit: BoxFit.cover,
                                    opacity: 1,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 12,
                              left: 10,
                              child: Text(
                                TextConst.squatChallenge,
                                style: AppTextStyles.bodyRegularLato,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                TextConst.fastWarmUp,
                style: AppTextStyles.headingBold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width,
              color: AppColors.background,
              child: fastWarmUpListView(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
