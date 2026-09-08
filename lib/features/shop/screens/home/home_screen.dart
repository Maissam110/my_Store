import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopping_app/common/widgets/products/cart_Products/cart_menu_Icon.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/text_strings.dart';

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
                  //  Search Bar

                  //  Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
