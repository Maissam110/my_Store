import 'package:flutter/material.dart';
import 'package:shopping_app/common/styles/spacing_style.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/constants/text_strings.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subtitle;
  final VoidCallback? onPressed;
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //
              // Image
              Image(
                image: AssetImage(image),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              SizedBox(height: TSizes.spaceBtWSections),

              //Title and Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: TSizes.spaceBtWItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtWSections),

              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(TText.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
