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
    this.radius = 15.0,
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
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: ColorManager.white, fontWeight: FontWeight.bold,height: 2.0),
        ),
      ),
    );
  }
}


/// A class that creates a text field with a label and a suffix icon.
class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final FormFieldValidator<String> validate;
  final String label;
  final IconData? suffix;
  final bool isPassword;
  final Function? suffixPressed;

  const DefaultFormField(
      {Key? key,
      required this.controller,
      required this.type,
      required this.validate,
      required this.label,
      this.suffix,
      this.suffixPressed,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      validator: validate,
      cursorColor: ColorManager.primary,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        labelText: label,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () => suffixPressed!(),
                icon: Icon(suffix,color: ColorManager.textPrimColor),
                highlightColor: ColorManager.transparent,
                splashColor: ColorManager.transparent,
              )
            : null,
      ),
    );
  }
}


/// It takes a context and a screen, and navigates to that screen
navigateTo(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}


/// It navigates to a new screen and replaces the current screen.
navigateAndReplace(BuildContext context, Widget screen) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
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
  final double? customSize;

  const CustomLogoAndTitle({Key? key, this.customSize}) : super(key: key);

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
          height: customSize ?? size.height * 0.1,
        ),
        SizedBox(width: size.width * 0.03),
        Text(
          'Skin Checker',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(height: 2.5),
        ),
      ],
    );
  }

}
