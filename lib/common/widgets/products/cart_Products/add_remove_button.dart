import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/icon/circular_icon.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Add Remove Icon
        TCircularIcon(
          icon: Iconsax.minus_copy,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: dark ? TColors.white : TColors.black,
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        SizedBox(width: TSizes.spaceBtWItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: TSizes.spaceBtWItems),
        TCircularIcon(
          icon: Iconsax.add_copy,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
