import 'package:adv_app/presentation/forgot_password/forgot_password.dart';
import 'package:adv_app/presentation/login/login.dart';
import 'package:adv_app/presentation/main/main_view.dart';
import 'package:adv_app/presentation/onboarding/onboarding.dart';
import 'package:adv_app/presentation/register.dart';
import 'package:adv_app/presentation/resources/string_manager.dart';
import 'package:adv_app/presentation/splash/splash.dart';
import 'package:adv_app/presentation/store_details/store_detail.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String mainRoute = "/main";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String resetPasswordRoute = "/resetPassword";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashView());

      case Routes.loginRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => OnBoarding());
      case Routes.registerRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => ForgotPassWord());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (BuildContext context) => MainView());

      case Routes.storeDetailsRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => StoreDetailView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (BuildContext context) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRouteFound),
              ),
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}
