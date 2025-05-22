import 'package:fitness_app_ui_design/model/popular_workout_model.dart';
import 'package:fitness_app_ui_design/utilis/image_const.dart';
import 'package:fitness_app_ui_design/utilis/text_const.dart';

final List<PopularWorkoutModel> demoPopularWorkout = [
  PopularWorkoutModel(
    imageUrl: ImageConst.popularWorkoutImage1,
    title: TextConst.popularWorkout1,
    calorie: 500,
    time: '50',
  ),
  PopularWorkoutModel(
    imageUrl: ImageConst.popularWorkoutImage2,
    title: TextConst.popularWorkout2,
    calorie: 600,
    time: '40',
  ),
];
