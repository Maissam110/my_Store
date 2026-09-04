import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/features/authentications/screens/onBoarding_Screen/onboarding_screen.dart';
import 'package:shopping_app/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Store',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,

      darkTheme: TAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
