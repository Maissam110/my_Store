import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopping_app/common/widgets/images/circular_image.dart';
import 'package:shopping_app/common/widgets/price_text_widgets/product_price_text.dart';
import 'package:shopping_app/common/widgets/texts/brand_title_text_with_varification_icon.dart';
import 'package:shopping_app/common/widgets/texts/product_title_text.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/enums.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale Price
        Row(
          children: [
            //  Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,

              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                "25%",
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: TColors.black),
              ),
            ),
            SizedBox(width: TSizes.spaceBtWItems),

            // Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: TSizes.spaceBtWItems),

            TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        SizedBox(height: TSizes.spaceBtWItems / 1.5),

        //Title
        TProductTitleText(title: 'Green Nike Sports Shirt'),
        SizedBox(height: TSizes.spaceBtWItems / 1.5),

        //  Stock Status
        Row(
          children: [
            TProductTitleText(title: 'Status'),
            SizedBox(width: TSizes.spaceBtWItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: TSizes.spaceBtWItems / 1.5),

        //  Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            TBrandTitleTextWithVarificationIcon(
              title: 'Nike',
              brandTextSizes: TextSize.medium,
            ),
          ],
        ),
      ],
    );
  }
}
