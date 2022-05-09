import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../style/color_manager.dart';


/// A custom button that has a default style
class DefaultButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Function function;
  final bool isUppercase;
  final double radius;
  final String text;
  final Color? buttonColor;

  const DefaultButton({
    Key? key,
    this.width = double.infinity,
    required this.function,
    this.isUppercase = false,
    this.radius = 20.0,
    required this.text,
    this.height = 44.0,
    this.buttonColor = ColorManager.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        onPressed: () => function(),
        child: Text(
          isUppercase ? text.toUpperCase() : text,
          style: Theme.of(context).textTheme.bodyText1!
              .copyWith(color: ColorManager.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}


/// It takes a context and a screen, and navigates to that screen
navigateTo(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}


/// It takes in a path to an SVG file, a width, and a height, and returns a Hero
customSvgPicture({required String path, required double width, required double height}) {
  return Hero(
    tag: path,
    child: SvgPicture.asset(
      path,
      width: width,
      height: height,
    ),
  );
}


/// A custom circle bubble widget that takes in a radius, color, and child
class CustomCircleBubble extends StatelessWidget {
  final double? radius;
  final Color? color;
  final Widget? child;
  const CustomCircleBubble({
    Key? key,
    this.radius = 5.0,
    this.color = ColorManager.primary,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius! * 2,
      height: radius! * 2,
      margin: EdgeInsets.symmetric(horizontal:radius! / 2),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(child: child),
    );
  }
}


// custom row of logo and text
class CustomLogoAndTitle extends StatelessWidget {
  const CustomLogoAndTitle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customSvgPicture(
          path: 'assets/images/logo.svg',
          width: size.width * 0.3,
          height: size.height * 0.1,
        ),
        SizedBox(width: size.width * 0.03),
        Text(
          'Skin Checker',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontSize: 20),
        ),
      ],
    );
  }

}
