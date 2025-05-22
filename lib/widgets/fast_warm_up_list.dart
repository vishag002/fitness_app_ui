import 'package:fitness_app_ui_design/utilis/color_const.dart';
import 'package:fitness_app_ui_design/utilis/image_const.dart';
import 'package:fitness_app_ui_design/utilis/text_const.dart';
import 'package:fitness_app_ui_design/utilis/text_style_const.dart';
import 'package:flutter/material.dart';

Widget fastWarmUpListView() {
  return ListView.builder(
    itemCount: 2,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.64,
          decoration: BoxDecoration(
            color: AppColors.forground,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(ImageConst.bfu1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TextConst.bfutitle1, style: AppTextStyles.bodySemiBold),
                  const SizedBox(height: 8),
                  Container(
                    //height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 1,
                        ),
                        child: Text("10 Min", style: AppTextStyles.bodySmall),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    //height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 1,
                        ),
                        child: Text(
                          TextConst.beginner,
                          style: AppTextStyles.bodySmall,
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
