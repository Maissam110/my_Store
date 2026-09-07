import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/features/authentications/controllers/onboarding%20controller/onboarding_controller.dart';
import 'package:shopping_app/features/authentications/screens/onBoarding_Screen/widgets/on_boarding_dot_navigation.dart';
import 'package:shopping_app/features/authentications/screens/onBoarding_Screen/widgets/on_boarding_next_button.dart';
import 'package:shopping_app/features/authentications/screens/onBoarding_Screen/widgets/on_boarding_page.dart';
import 'package:shopping_app/features/authentications/screens/onBoarding_Screen/widgets/on_boarding_skip.dart';
import 'package:shopping_app/util/constants/image_strings.dart';
import 'package:shopping_app/util/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //  Horizontal scrool pages
          PageView(
            controller: controller.pageControler,
            onPageChanged: controller.updatePageIndicator,
            children: [
              //On Boarding Screen 1
              OnBoardingWidget(
                image: TImages.onBoardingScreen1,
                title: TText.onBoardingTitle1,
                subtitle: TText.onBoardingsubTitle1,
              ),
              OnBoardingWidget(
                image: TImages.onBoardingScreen2,
                title: TText.onBoardingTitle2,
                subtitle: TText.onBoardingsubTitle3,
              ),
              OnBoardingWidget(
                image: TImages.onBoardingScreen3,
                title: TText.onBoardingTitle3,
                subtitle: TText.onBoardingsubTitle3,
              ),
            ],
          ),

          //  Skip Button
          const OnBoardingSkip(),

          //  Dot Navigation Smooth page indicator
          OnBoardingDotNavigation(),

          //Circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
