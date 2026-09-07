import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/home_screen.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? TColors.black : TColors.white,
          indicatorColor: dark
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          height: 80,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home_copy), label: 'Home'),
            NavigationDestination(
              icon: Icon(Iconsax.shop_copy),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart_copy),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user_copy),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
