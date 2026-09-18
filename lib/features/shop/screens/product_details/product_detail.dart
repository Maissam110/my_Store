import 'package:flutter/material.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';

import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  Product Image Slider
            TProductImageSlider(),

            // Products Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating AND Share
                  TRatingAndShare(),

                  //  Price, title, stock, and brand
                  TProductMetaData(),

                  //  Attributes
                  //  Checkout Button
                  //  Description
                  //  Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
