import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/images/rounded_image.dart';
import 'package:shopping_app/common/widgets/texts/brand_title_text_with_varification_icon.dart';
import 'package:shopping_app/common/widgets/texts/product_title_text.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Row(
      children: [
        //  Image
        TRoundedImage(
          imageUrl: TImages.clothIcon,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        SizedBox(width: TSizes.spaceBtWItems),
        // Text Size Price
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleTextWithVarificationIcon(title: 'Nike'),
              TProductTitleText(title: 'Black Sports Shoes', maxLines: 1),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 48',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
