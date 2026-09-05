import 'package:flutter/material.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/constants/text_strings.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Image(
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
          height: 150,
        ),
        Text(
          TText.loginTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: TSizes.sm),
        Text(
          TText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
