import 'package:flutter/material.dart';
import 'package:shopping_app/features/authentications/controllers/onboarding%20controller/onboarding_controller.dart';
import 'package:shopping_app/util/constants/sizes.dart';
import 'package:shopping_app/util/device/device_utils.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text("Skip"),
      ),
    );
  }
}
