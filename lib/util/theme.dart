import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    cursorColor: AppColors.primaryColor,
    accentColor: AppColors.primaryColor,
   // fontFamily: 'arial',
    focusColor: AppColors.whiteColor,
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: IconThemeData(color: Colors.white),
    
  );
}
IconThemeData selectednavigationRailIconTheme(){
  return IconThemeData(
     color: AppColors.primaryColor,
     size: 45
  );
}
IconThemeData unselectednavigationRailIconTheme(){
  return IconThemeData(
     color: AppColors.darkGreyColor,
  );
}

class AppColors {
  static const primaryColor = Color(0xFF816E52);
  static const secondprimaryColor = Color(0xFFF65526);
  static const darkBlueColor = Color(0xff17314F);
  static const lightblurshade = Color(0xff8A97A6);
  static const blueshade = Color(0xff183251);
  static const brownColor = Color(0xFF282C35);
  static const textcolor = Color(0xFF9A9AA2);
  static const iconThemeColor = Color(0xFFACBAC3);
  static const greyColor = Color(0xFFF5FAFE);

  static const textFeildBorder = Color(0xffb5b5be);
  static const buttonBg = Color(0xFF6F8679);
  static const talibhebuttonbg = Color(0xFFADB37D);
  static const buttonBorder = Color(0xFF78A58C);
  static const lightGreyColor = Color(0xFFE5E5E5);
  static const cartbuttonColor = Color(0xffE9E7E7);
  static const redColor = Color(0xFFEE4242);
  static const mediumGreyColor = Color(0xFFB4B4B4);
  static const darkColor = Color(0xFF000000);
  static const whiteColor = Color(0xFFFFFFFF);
  static const voilet = Color(0xff4661BB);
  static const lightBlue =Color(0xFF5EA6ED);
  static const appBarColor = Color(0xFF294423);
  static const talibheappbarColor = Color(0xFF919D42);
  static const lightestGreyColor = Color(0xFFD6D5D5);
  static const darkGreyColor = Color(0xFF555555);
  static const orangeColor = Color(0xFFFFA319);
  static const greenColor = Color(0xFF3DAD50);
  static const bgtable = Color(0xffd1dfd8);
  static const talibhenavbar_bg = Color(0xffd7dac2);
  static const talibhenavbarText = Color(0xFF6B6567);
  static const blueColor = Color(0XFF045890);
  static const darkblue = Color(0XFF1C6290);
  static const lightblue = Color(0XFFC2DDF0) ;
  static const normalBrown = Color(0xFF954535);
  static const lightbrown = Color(0xffc2b280);
  static const darkGreen = Color(0xFF355e3b);

  static const lightYellow=Color(0xFFFFF7D1);
  static Widget flexibleAppBar = Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment(2, 0.0), 
                colors: <Color>[
              Color(0xFF816E52),
              Colors.white
            ])          
         ),        
       );

}

class AppStyles {

  static const textLabel = TextStyle(
    color: AppColors.darkColor,
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
}

InputDecoration hintTextDecoration(String text) {
  return InputDecoration(
    hintText: text,
//    border: InputBorder.none,
    labelStyle: AppStyles.textLabel,
    hintStyle: AppStyles.textLabel,
  );
}
