import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/shop/screens/product%20reviews/product_reviews.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';

import 'package:shopping_app/util/constants/sizes.dart';
// import 'package:shopping_app/util/helpers/helper_function.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: TBottomAddToCartWidget(),
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
                  TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtWSections),

                  //  Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('CheckOut'),
                    ),
                  ),

                  //  Description
                  TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtWItems),
                  ReadMoreText(
                    'Emerence (a brand from Cosmo Skin Care widely known for specialized clinical treatments) or looking for a description of its hallmark formulations, here is a breakdown of the primary products under the Emerence lineup:',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  //  Reviews
                  Divider(),

                  SizedBox(height: TSizes.spaceBtWItems),
                  Row(
                    children: [
                      TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.to(() => TProductReviews()),
                        icon: Icon(Iconsax.arrow_right_3_copy, size: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtWSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
