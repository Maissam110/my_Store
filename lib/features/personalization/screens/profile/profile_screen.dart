import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/images/circular_image.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
import 'package:shopping_app/util/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //  Profile Screen
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              //  Details
              SizedBox(height: TSizes.spaceBtWItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtWItems),

              //  Heading Profile Info
              TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              SizedBox(height: TSizes.spaceBtWItems),

              TProfileMenu(onPressed: () {}, title: 'Name', value: 'Maissam'),
              TProfileMenu(
                onPressed: () {},
                title: 'userName',
                value: 'coding_with_ali',
              ),

              SizedBox(height: TSizes.spaceBtWItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtWItems),

              //  Heading Personal Info
              TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              SizedBox(height: TSizes.spaceBtWItems),

              TProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy_copy,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'coding_with_ali',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+92 312 4567890',
              ),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              TProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '01-Jun-2021',
              ),

              Divider(),
              SizedBox(height: TSizes.spaceBtWItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
