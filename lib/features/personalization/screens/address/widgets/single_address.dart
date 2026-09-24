import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TSingleAddress extends StatelessWidget {
  final bool selectedAddress;

  const TSingleAddress({super.key, required this.selectedAddress});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TRoundedContainer(
      padding: EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? TColors.darkerGrey
          : TColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtWItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle_copy : null,
              color: selectedAddress
                  ? dark
                        ? TColors.light
                        : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jhon Wrik',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: TSizes.sm / 2),
              Text(
                '(+123) 456 7890',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: TSizes.sm / 2),
              Text(
                '83456 Timey Carvus, South Liana, Minae, 87665, USA',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
