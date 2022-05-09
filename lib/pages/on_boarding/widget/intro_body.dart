import 'package:flutter/material.dart';
import '../../../models/intro_model.dart';
import '../../../shared/style/color_manager.dart';
import '../../../shared/widgets/components.dart';

class IntroBody extends StatelessWidget {
  final IntroModel model;
  const IntroBody({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        customSvgPicture(
          path: model.imageUrl,
          width: size.width * 0.7,
          height: null,
        ),
        SizedBox(height: size.height * 0.03),
        Text(
          model.text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: ColorManager.textPrimColor),
        ),
      ],
    );
  }
}
