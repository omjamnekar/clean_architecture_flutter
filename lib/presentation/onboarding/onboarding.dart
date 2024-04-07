import 'package:adv_app/presentation/resources/assets_manager.dart';
import 'package:adv_app/presentation/resources/color_manager.dart';
import 'package:adv_app/presentation/resources/routs_manager.dart';
import 'package:adv_app/presentation/resources/string_manager.dart';
import 'package:adv_app/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late final List<SliderObject> _list = _getSliderData();
  PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
        SliderObject(
            title: AppStrings.onboardingTitle1,
            subtitle: AppStrings.onboardingDesc1,
            image: ImageAssets.onboarding1),
        SliderObject(
            title: AppStrings.onboardingTitle2,
            subtitle: AppStrings.onboardingDesc2,
            image: ImageAssets.onboarding2),
        SliderObject(
            title: AppStrings.onboardingTitle3,
            subtitle: AppStrings.onboardingDesc3,
            image: ImageAssets.onboarding3),
        SliderObject(
            title: AppStrings.onboardingTitle4,
            subtitle: AppStrings.onboardingDesc4,
            image: ImageAssets.onboarding4),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: AppSize.s1_5,
        foregroundColor: ColorManager.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        title: Text(AppStrings.onboardingTitle1),
        // actions: [
        //   TextButton(
        //     onPressed: () {
        //       Navigator.pushNamed(context, Routes.loginRoute);
        //     },
        //     child: Text(AppStrings.skip),
        //   )
        // ],
      ),
      backgroundColor: ColorManager.white,
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardingPage(_list[index]);
        },
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  SliderObject _sliderObject;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppSize.s8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSize.s8),
          child: Text(
            _sliderObject.subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(
          _sliderObject.image,

          // height: AppSize.s60,
          // width: AppSize.s60,
        ),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subtitle;
  String image;
  SliderObject(
      {required this.title, required this.subtitle, required this.image});
}
