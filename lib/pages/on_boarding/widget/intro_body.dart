import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../models/intro_model.dart';
import '../../../shared/style/color_manager.dart';

class IntroBody extends StatelessWidget {
  final IntroModel model;
  const IntroBody({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SvgPicture.asset(
          model.imageUrl,
          width: size.width * 0.7,
          height:size.height * 0.39,
        ),
        SizedBox(height: size.height * 0.03),
        Text(
          model.text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1!
              .copyWith(color: ColorManager.textPrimColor),
        ),
      ],
    );
  }
}
