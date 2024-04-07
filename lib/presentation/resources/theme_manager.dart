import 'package:adv_app/presentation/resources/color_manager.dart';
import 'package:adv_app/presentation/resources/font_manager.dart';
import 'package:adv_app/presentation/resources/styles_manager.dart';
import 'package:adv_app/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

class ThemeSetter {
  static ThemeData getApplicationTheme() {
    return ThemeData(
      // main colors of the app

      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      hintColor: ColorManager.primary, // for text field hint color
      disabledColor: ColorManager.grey1, // for disabled button color

      // ripple effect color
      splashColor: ColorManager.primaryOpacity70,

      // card view theme

      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey2,
        elevation: AppSize.s4,
      ),

      //App bar theme

      appBarTheme: AppBarTheme(
          color: ColorManager.primary,
          elevation: AppSize.s4,
          centerTitle: true,
          shadowColor: ColorManager.primaryOpacity70,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s16)),

      // button theme

      buttonTheme: ButtonThemeData(
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        // textTheme: ButtonTextTheme.primary,
        splashColor: ColorManager.primaryOpacity70,
        shape: StadiumBorder(),
      ),

      //elvated button theme

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.white),
          backgroundColor: ColorManager.primary,
          shadowColor: ColorManager.primaryOpacity70,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12)),
        ),
      ),

      //Text theme

      textTheme: TextTheme(
        headline1: getSemiBoldStyle(
            fontSize: FontSize.s12, color: ColorManager.darkGrey),
        subtitle1: getMediumStyle(
            fontSize: FontSize.s14, color: ColorManager.darkGrey),
        caption: getRegularStyle(
          color: ColorManager.grey1,
        ),
        bodyText1: getRegularStyle(color: Colors.grey),
      ),

      //Input decoration theme(text field theme)

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(AppPadding.p8),
        //hintStyle
        hintStyle: getRegularStyle(color: ColorManager.grey1),
        // label styl,e,
        labelStyle: getMediumStyle(color: ColorManager.darkGrey),
        //error style
        errorStyle: getRegularStyle(color: ColorManager.error),

        //enable border
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.grey1, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),

        // focused border
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        ),
        //error border
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        ),
      ),
    );
  }
}
