import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/features/authentications/screens/password_configuration/forgot_password.dart';
import 'package:shopping_app/features/authentications/screens/signp_Screen/sign_up_screen.dart';
import 'package:shopping_app/navigation_menu.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtWSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                //
                prefix: Icon(Iconsax.direct_right_copy),
                labelText: TText.email,
              ),
            ),
            SizedBox(height: TSizes.spaceBtWInputFields),

            //  Password
            TextFormField(
              decoration: InputDecoration(
                //
                prefix: Icon(Iconsax.password_check_copy),
                labelText: TText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: TSizes.spaceBtWInputFields / 2),

            // Remenber Me && Forgot Passowrd
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remmember Me
                Row(
                  children: [
                    //  Toggle Button
                    Checkbox(value: true, onChanged: (value) {}),

                    //  Text: Remember Me
                    Text(TText.rememberMe),
                  ],
                ),

                //  Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => ForgotPassword()),
                  child: Text(TText.forgotPassword),
                ),
              ],
            ),
            SizedBox(height: TSizes.spaceBtWSections),

            //  SIgn in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationMenu()),
                child: Text(TText.signin),
              ),
            ),
            SizedBox(height: TSizes.spaceBtWItems),

            //  Create Account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: Text(TText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
