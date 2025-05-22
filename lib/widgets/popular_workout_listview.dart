import 'package:fitness_app_ui_design/utilis/color_const.dart';
import 'package:fitness_app_ui_design/utilis/data/popular_workout_data.dart';
import 'package:fitness_app_ui_design/utilis/image_const.dart';
import 'package:fitness_app_ui_design/utilis/text_style_const.dart';
import 'package:flutter/material.dart';

Widget popularWorkoutList({context}) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.22,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      itemCount: demoPopularWorkout.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final popularWorkoutModel = demoPopularWorkout[index];
        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              color: AppColors.primaryLime,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(popularWorkoutModel.imageUrl),
                fit: BoxFit.cover,
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popularWorkoutModel.title,
                        style: AppTextStyles.headingBold.copyWith(
                          color: AppColors.background,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        //height: MediaQuery.of(context).size.height * 0.05,
                        //width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          color: AppColors.background.withOpacity(.9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                ImageConst.calorieIcon,
                                height: 20,
                                scale: 1,
                              ),
                              Text(
                                "${popularWorkoutModel.calorie} kcal",
                                style: AppTextStyles.chipLabel,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        //height: MediaQuery.of(context).size.height * 0.05,
                        //width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          color: AppColors.background.withOpacity(.9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                ImageConst.clockIcon,
                                height: 20,
                                scale: 1,
                              ),
                              Text(
                                "${popularWorkoutModel.time} Min",
                                style: AppTextStyles.chipLabel,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    //height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: AppColors.primaryLime,
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Icon(Icons.play_arrow)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
