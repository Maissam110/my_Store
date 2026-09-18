import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/util/constants/sizes.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //  Rating
        Row(
          children: [
            Icon(Iconsax.star_copy, color: Colors.amber, size: 24),
            SizedBox(width: TSizes.spaceBtWItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  //
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(text: '199'),
                ],
              ),
            ),
          ],
        ),

        //  Share Button
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share, size: TSizes.iconMd),
        ),
      ],
    );
  }
}
