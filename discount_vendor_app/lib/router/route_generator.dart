import 'package:discount_vendor_app/router/routing_variables.dart';
import 'package:flutter/material.dart';

import '../features/authentication/presentation/pages/auth_page.dart';
import '../features/registration/presentation/pages/registration_page.dart';
import '../features/startup/presentation/pages/startup_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Navigation.startup:
        return MaterialPageRoute(builder: (_) => StartupPage());
      // case Navigation.splashPage:
      //   return MaterialPageRoute(builder: (_) => SplashPage());
      // case Navigation.homePage:
      //   return MaterialPageRoute(builder: (_) => HomePage());
      case Navigation.authPage:
        return MaterialPageRoute(builder: (_) => AuthPage());
      // case Navigation.forgotPasswordPage:
      //   return MaterialPageRoute(builder: (_) => ForgottenPasswordPage());
      // case Navigation.changeForgottenPasswordPage:
      //   return MaterialPageRoute(builder: (_) => NewPasswordPage(arguments: args));
      case Navigation.regPage:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
