import 'package:fitness_app_ui_design/model/todays_plan_model.dart';
import 'package:fitness_app_ui_design/utilis/image_const.dart';
import 'package:fitness_app_ui_design/utilis/text_const.dart';

final List<TodaysPlanModel> demoTodaysPlan = [
  TodaysPlanModel(
    imageUrl: ImageConst.todayPlan1,
    title: TextConst.todaysplan1,
    description: TextConst.todaysplan1Dis,
    category: TextConst.intermediate,
    progress: 40,
  ),
  TodaysPlanModel(
    imageUrl: ImageConst.todayPlan2,
    title: TextConst.todaysplan2,
    description: TextConst.todaysplan2Dis,
    category: TextConst.beginner,
    progress: 20,
  ),
  TodaysPlanModel(
    imageUrl: ImageConst.todayPlan3,
    title: TextConst.todaysplan3,
    description: TextConst.todaysplan3Dis,
    category: TextConst.beginner,
    progress: 60,
  ),
];
