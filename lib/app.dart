import 'package:flutter/material.dart';
import 'package:shopping_app/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Store',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,

      darkTheme: TAppTheme.darkTheme,
    );
  }
}
