import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/util/constants/colors.dart';

class TRatingBarIndicator extends StatelessWidget {
  final double rating;

  const TRatingBarIndicator({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      unratedColor: TColors.grey,
      itemSize: 20,
      itemBuilder: (_, __) => Icon(Iconsax.star_1_copy, color: TColors.primary),
    );
  }
}
