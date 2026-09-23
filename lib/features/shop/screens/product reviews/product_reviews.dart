import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/products/ratings/rating.dart';
import 'package:shopping_app/features/shop/screens/product%20reviews/widgets/overall_product_rating.dart';
import 'package:shopping_app/features/shop/screens/product%20reviews/widgets/user_review_card.dart';
import 'package:shopping_app/util/constants/sizes.dart';

class TProductReviews extends StatelessWidget {
  const TProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  AppBar
      appBar: TAppbar(title: Text('Reviews & Ratings'), showBackArrow: true),

      //  Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rating and Reviews are varified and are from the propple who use the same type of device that you use.',
              ),
              SizedBox(height: TSizes.spaceBtWItems),

              //  Overall Product Rating
              TOverallProductRating(),

              TRatingBarIndicator(rating: 3.5),

              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: TSizes.spaceBtWSections),

              //  User Review List
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
