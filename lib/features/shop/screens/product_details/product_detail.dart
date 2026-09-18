import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shopping_app/common/widgets/icon/circular_icon.dart';
import 'package:shopping_app/common/widgets/images/rounded_image.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
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
