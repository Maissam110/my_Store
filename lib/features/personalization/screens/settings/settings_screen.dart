import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopping_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:shopping_app/features/personalization/screens/address/address.dart';
import 'package:shopping_app/features/personalization/screens/profile/profile_screen.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  Headers
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //
                  TAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),

                  //  User Prtofile Image
                  TUserProfileTile(
                    onPressed: () => Get.to(() => ProfileScreen()),
                  ),

                  SizedBox(height: TSizes.spaceBtWSections),
                ],
              ),
            ),

            //  Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Setting
                  TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtWItems),

                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart_copy,
                    title: 'My Address',
                    subtitle: 'Set Shopping Delivery Address',
                    onTap: () => Get.to(() => UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart_copy,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick_copy,
                    title: 'My Orders',
                    subtitle: 'In-Progress and Completed Orders',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank_copy,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape_copy,
                    title: 'My Coupons',
                    subtitle: 'List of all discount coupons',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification_copy,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card_copy,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                  ),
                  SizedBox(height: TSizes.spaceBtWSections),

                  //
                  TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtWItems),

                  TSettingsMenuTile(
                    icon: Iconsax.document_upload_copy,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firestore',
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.location_copy,
                    title: 'Geolocation',
                    subtitle: 'Set recommandation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user_copy,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image_copy,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //  Logout Button
                  SizedBox(height: TSizes.spaceBtWSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Logout'),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtWSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
