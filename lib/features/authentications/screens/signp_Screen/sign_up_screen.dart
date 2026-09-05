import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/common/widgets/login_signup/divider_form.dart';
import 'package:shopping_app/common/widgets/login_signup/social_buttons.dart';
import 'package:shopping_app/features/authentications/screens/signp_Screen/widgetsst/sign_up_form.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBtWSections),

              //  Form
              TSIgnUpForm(),
              SizedBox(height: TSizes.spaceBtWSections),

              //  Divider
              TFormDivider(dividerText: TText.orSignUpWith.capitalize!),
              SizedBox(height: TSizes.spaceBtWSections),

              //  Social Buttons
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
