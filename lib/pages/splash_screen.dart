import 'package:fitness_app_ui_design/pages/home_screen.dart';
import 'package:fitness_app_ui_design/utilis/color_const.dart';
import 'package:fitness_app_ui_design/utilis/image_const.dart';
import 'package:fitness_app_ui_design/utilis/text_const.dart';
import 'package:fitness_app_ui_design/utilis/text_style_const.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.grey1,
              image: DecorationImage(
                image: AssetImage(ImageConst.splashImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: AppColors.primaryLime,

                    gradient: LinearGradient(
                      colors: [
                        AppColors.background,
                        AppColors.background.withOpacity(0),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            TextConst.splashHeader,
            style: AppTextStyles.headingExtraBold,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            TextConst.splashSubHeader,
            style: AppTextStyles.caption,
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                //vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryDark,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Center(
                child: Text(
                  TextConst.splashButton,
                  style: AppTextStyles.buttonText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
