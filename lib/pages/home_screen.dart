import 'package:fitness_app_ui_design/utilis/color_const.dart';
import 'package:fitness_app_ui_design/utilis/text_const.dart';
import 'package:fitness_app_ui_design/utilis/text_style_const.dart';
import 'package:fitness_app_ui_design/widgets/popular_workout_listview.dart';
import 'package:fitness_app_ui_design/widgets/todays_plan_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TextConst.gm, style: AppTextStyles.bodySemiBold),
                  Text(TextConst.name, style: AppTextStyles.headingExtraBold),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchBar(
                constraints: const BoxConstraints(minHeight: 55),
                hintText: TextConst.search,
                onChanged: (value) {
                  // Handle search input
                },
                backgroundColor: WidgetStatePropertyAll(AppColors.background),
                shadowColor: WidgetStatePropertyAll(Colors.transparent),
                hintStyle: WidgetStatePropertyAll(
                  AppTextStyles.bodyRegular.copyWith(color: AppColors.grey1),
                ),
                leading: Icon(Icons.search, color: AppColors.grey1, size: 30),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                TextConst.popularWorkouts,
                style: AppTextStyles.titleBold,
              ),
            ),
            const SizedBox(height: 20),
            popularWorkoutList(context: context),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(TextConst.todayPlan, style: AppTextStyles.titleBold),
            ),
            Expanded(child: todaysPlanListView()),
          ],
        ),
      ),
    );
  }
}
