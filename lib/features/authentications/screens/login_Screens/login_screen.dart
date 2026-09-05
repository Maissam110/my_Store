import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:shopping_app/common/styles/spacing_style.dart';
import 'package:shopping_app/common/widgets/login_signup/divider_form.dart';
import 'package:shopping_app/common/widgets/login_signup/social_buttons.dart';
import 'package:shopping_app/features/authentications/screens/login_Screens/widgets/login_form.dart';
import 'package:shopping_app/features/authentications/screens/login_Screens/widgets/login_header.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          //
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLoginHeader(),

              // Form
              TLoginForm(),

              //  Divider
              TFormDivider(dividerText: TText.orSignUpWith.capitalize!),
              SizedBox(height: TSizes.spaceBtWSections),

              //  Fottor
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
