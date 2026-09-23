import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/chips/choise_chip.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopping_app/common/widgets/price_text_widgets/product_price_text.dart';
import 'package:shopping_app/common/widgets/texts/product_title_text.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      children: [
        // Selected Attributes Pricing & Discription
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              // Title, Price and Stock
              Row(
                children: [
                  //
                  TSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: TSizes.spaceBtWItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(title: 'Price', smallSize: true),
                          SizedBox(width: TSizes.spaceBtWItems),
                          //  Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: TSizes.spaceBtWItems),

                          //  Sale Price
                          TProductPriceText(price: '20'),
                        ],
                      ),

                      //  Stock
                      Row(
                        children: [
                          TProductTitleText(title: 'Stock', smallSize: true),
                          SizedBox(width: TSizes.spaceBtWItems),
                          //  Actual Price
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          //
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: TSizes.spaceBtWItems),

              //  Variation Description
              TProductTitleText(
                title:
                    'This is the description of the Product, ant it can be 4 lines max.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        SizedBox(height: TSizes.spaceBtWItems),

        //  Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(width: TSizes.spaceBtWItems / 2),
            //T
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Black',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //T
            TSectionHeading(title: 'Size', showActionButton: false),
            SizedBox(width: TSizes.spaceBtWItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 40',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
