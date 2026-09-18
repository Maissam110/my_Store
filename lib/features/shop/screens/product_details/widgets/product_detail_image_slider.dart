import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shopping_app/common/widgets/icon/circular_icon.dart';
import 'package:shopping_app/common/widgets/images/rounded_image.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return TCustomCurvedWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(TImages.productImage1)),
                ),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      SizedBox(width: TSizes.spaceBtWItems),
                  itemBuilder: (_, index) => TRoundedImage(
                    imageUrl: TImages.productImage3,
                    width: 80,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(TSizes.sm),
                    backgroundColor: dark ? TColors.dark : TColors.light,
                  ),
                ),
              ),
            ),

            //  AppBar Icons
            TAppbar(
              showBackArrow: true,
              action: [
                //
                TCircularIcon(icon: Iconsax.heart_copy, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
