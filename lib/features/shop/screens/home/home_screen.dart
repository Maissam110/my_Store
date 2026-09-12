import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopping_app/common/widgets/layouts/grid_layout.dart';
import 'package:shopping_app/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
import 'package:shopping_app/util/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtWSections),

                  //  Search Bar
                  TSearchContainer(text: 'Search in Store'),

                  SizedBox(height: TSizes.spaceBtWSections),

                  //  Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //  Headings
                        TSectionHeading(
                          textColor: TColors.white,
                          title: 'Populer Categories',
                          showActionButton: false,
                        ),
                        SizedBox(height: TSizes.spaceBtWItems),

                        //  Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //  Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtWSections),

                  //  Populer Products
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => TProductCardVertical(),
                  ),
                  TProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
