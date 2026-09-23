import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/icon/circular_icon.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TBottomAddToCartWidget extends StatelessWidget {
  const TBottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.defaultSpace,
        vertical: TSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? TColors.grey : TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          TCircularIcon(
            icon: Iconsax.minus_copy,
            backgroundColor: TColors.darkerGrey,
            width: 40,
            height: 40,
            color: TColors.white,
          ),
          SizedBox(width: TSizes.spaceBtWItems),
          Text('2', style: Theme.of(context).textTheme.titleSmall),
          SizedBox(width: TSizes.spaceBtWItems),
          TCircularIcon(
            icon: Iconsax.add_copy,
            backgroundColor: TColors.black,
            width: 40,
            height: 40,
            color: TColors.white,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black,
              side: BorderSide(color: TColors.black),
            ),
            onPressed: () {},
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
