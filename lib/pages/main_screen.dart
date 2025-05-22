import 'package:fitness_app_ui_design/utilis/color_const.dart';
import 'package:fitness_app_ui_design/utilis/image_const.dart';
import 'package:fitness_app_ui_design/utilis/text_style_const.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static TextStyle optionStyle = AppTextStyles.bodySmall;
  static final List<Widget> _widgetOptions = <Widget>[
    Text('Home', style: optionStyle),
    Text('Explore', style: optionStyle),
    Text('Analytics', style: optionStyle),
    Text('Profile', style: optionStyle),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.primaryDark,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GNav(
              //rippleColor: AppColors.primaryLime,
              // hoverColor: AppColors.primaryLime,
              haptic: false, // haptic feedback
              tabBorderRadius: 20,
              curve: Curves.easeInOutExpo, // tab animation curves
              duration: Duration(milliseconds: 0), // tab animation duration
              gap: 10, // the tab button gap between icon and text
              color: AppColors.background, // unselected icon color
              activeColor:
                  AppColors.primaryDark, // selected icon and text color
              iconSize: 30, // tab button icon size
              tabBackgroundColor: AppColors.primaryLime,
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ), // navigation bar padding
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: "Home",
                  leading: SizedBox(
                    // height: 20,
                    // width: 20,
                    child: Image.asset(
                      ImageConst.homeIcon,
                      color: AppColors.forground,
                    ),
                  ),
                ),
                GButton(
                  icon: LineIcons.rocketChat,
                  text: 'Explore',
                  leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      ImageConst.exploreIcon,
                      color: AppColors.forground,
                    ),
                  ),
                ),
                GButton(
                  icon: LineIcons.chalkboardTeacher,
                  text: 'Analytics',
                  leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      ImageConst.analyticsIcon,
                      color: AppColors.forground,
                    ),
                  ),
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      ImageConst.profileIcon,
                      color: AppColors.forground,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
