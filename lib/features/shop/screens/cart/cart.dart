import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/icon/circular_icon.dart';
import 'package:shopping_app/common/widgets/images/rounded_image.dart';
import 'package:shopping_app/common/widgets/price_text_widgets/product_price_text.dart';
import 'package:shopping_app/common/widgets/products/cart_Products/add_remove_button.dart';
import 'package:shopping_app/common/widgets/products/cart_Products/cart_item.dart';
import 'package:shopping_app/common/widgets/texts/brand_title_text_with_varification_icon.dart';
import 'package:shopping_app/common/widgets/texts/product_title_text.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 4,
          separatorBuilder: (_, __) =>
              SizedBox(height: TSizes.spaceBtWSections),
          itemBuilder: (_, index) => Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtWItems),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70),
                      TProductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  TProductPriceText(price: '250'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Checkout \$250.0'),
        ),
      ),
    );
  }
}
