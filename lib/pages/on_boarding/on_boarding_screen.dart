import 'package:flutter/material.dart';
import 'widget/intro_body.dart';
import '../../shared/style/color_manager.dart';
import '../../shared/widgets/components.dart';
import '../../models/intro_model.dart';
import '../login/login_screen.dart';

enum IntroPageType {DOCTOR, PATIENT}
class OnBoardingScreen extends StatefulWidget {
  final IntroPageType introPageType;
  const OnBoardingScreen({Key? key, required this.introPageType}) : super(key: key);
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.065),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.02),
                const CustomLogoAndTitle( ),
                SizedBox(height: size.height * 0.13),
                Expanded(
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) =>
                        IntroBody( model: widget.introPageType == IntroPageType.DOCTOR ?
                        introListDoctor[_currentPage]: introListPatient[_currentPage] ) ,
                    itemCount: introListDoctor.length,
                    controller: _pageController,
                    onPageChanged: (int page)=> setState(() => _currentPage = page),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => const CustomCircleBubble()),
                ),
                SizedBox(height: size.height * 0.02),
                CustomCircleBubble(
                  radius: 25.5,
                  color: ColorManager.primaryOpacity50,
                  child: InkWell(
                    onTap: () {
                      if (_currentPage == introListDoctor.length - 1) {
                        navigateTo(context, LoginScreen());
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }},
                    child: Text(
                      '3',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: ColorManager.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            height: 2.1,
                          ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
