import 'package:flutter/material.dart';
import '../../shared/style/color_manager.dart';
import '../../shared/widgets/components.dart';
import '../on_boarding/on_boarding_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customSvgPicture(
                path: 'assets/images/logo.svg',
                width: size.width * 0.5,
                height: size.height * 0.2,
              ),
              SizedBox(height: size.height * 0.015),
              Text('Skin Checker',
                  style: Theme.of(context).textTheme.headline5),
              SizedBox(height: size.height * 0.03),
              DefaultButton(
                function: () =>navigateTo(context, const OnBoardingScreen(introPageType: IntroPageType.DOCTOR,)),
                text: 'Sign in as a doctor',
                width: size.width * 0.55,
              ),
              SizedBox(height: size.height * 0.016),
              DefaultButton(
                function: () =>navigateTo(context, const OnBoardingScreen(introPageType: IntroPageType.PATIENT,)),
                text: 'Sign in as a patient',
                buttonColor: ColorManager.pinkColor,
                width: size.width * 0.55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

