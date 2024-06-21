 
import 'package:flutter/material.dart';
import 'package:student_management_starter/app/navigator_key/navigator_key.dart';
import 'package:student_management_starter/app/themes/app_theme.dart';
import 'package:student_management_starter/features/splash/presentation/view/splash_view.dart';
 
class App extends StatelessWidget {
  const App({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getApplicationTheme(false),
      title: 'Too Ease',
      home: const SplashView(),
      navigatorKey: AppNavigator.navigatorKey,
    );
  }
}