import 'package:flutter/material.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onTap;

  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backGroundColor = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: TSizes.spaceBtWItems),
        child: Column(
          children: [
            //Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color:
                    backGroundColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? TColors.light : TColors.dark,
                ),
              ),
            ),

            //  Text
            SizedBox(height: TSizes.spaceBtWItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
