import 'package:fitness_app_ui_design/utilis/color_const.dart';
import 'package:fitness_app_ui_design/utilis/data/todays_plan_data.dart';
import 'package:fitness_app_ui_design/utilis/image_const.dart';
import 'package:fitness_app_ui_design/utilis/text_const.dart';
import 'package:fitness_app_ui_design/utilis/text_style_const.dart';
import 'package:flutter/material.dart';

Widget todaysPlanListView() {
  return ListView.builder(
    itemCount: demoTodaysPlan.length,
    itemBuilder: (context, index) {
      final todaysPlanModel = demoTodaysPlan[index];
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(23),
                    image: DecorationImage(
                      image: AssetImage(todaysPlanModel.imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todaysPlanModel.title,
                    style: AppTextStyles.subTitleBold,
                  ),
                  Text(
                    todaysPlanModel.description,
                    style: AppTextStyles.bodySmall,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    // width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: AppColors.primaryDark,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          todaysPlanModel.category,
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.background,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
