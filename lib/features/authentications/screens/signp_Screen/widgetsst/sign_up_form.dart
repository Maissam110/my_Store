import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/features/authentications/screens/signp_Screen/varify_email_screen.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/constants/text_strings.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TSIgnUpForm extends StatelessWidget {
  const TSIgnUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TText.firstName,
                    prefixIcon: Icon(Iconsax.user_copy),
                  ),
                ),
              ),

              SizedBox(width: TSizes.spaceBtWInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TText.firstName,
                    prefixIcon: Icon(Iconsax.user_copy),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtWInputFields),

          //  User Name
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TText.userName,
              prefixIcon: Icon(Iconsax.edit_copy),
            ),
          ),
          SizedBox(height: TSizes.spaceBtWInputFields),

          //  Email
          TextFormField(
            decoration: InputDecoration(
              labelText: TText.email,
              prefixIcon: Icon(Iconsax.direct_copy),
            ),
          ),
          SizedBox(height: TSizes.spaceBtWInputFields),

          //  Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: TText.poneNo,
              prefixIcon: Icon(Iconsax.call_copy),
            ),
          ),
          SizedBox(height: TSizes.spaceBtWInputFields),

          //  Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TText.password,
              prefixIcon: Icon(Iconsax.password_check_copy),
              suffixIcon: Icon(Iconsax.eye_slash_copy),
            ),
          ),
          SizedBox(height: TSizes.spaceBtWInputFields),

          //  Terms and Conditions Check Box
          Row(
            children: [
              //
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    //
                    TextSpan(
                      text: '${TText.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '${TText.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? TColors.white : TColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '${TText.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? TColors.white : TColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtWSections),

          //  Sign Up Botton
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VarifyEmailScreen()),
              child: Text(TText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
