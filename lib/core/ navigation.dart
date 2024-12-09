import 'package:flutter/material.dart';
import 'package:untitled1/screens/category/category.dart';
import 'package:untitled1/screens/home/home_page.dart';
import '../screens/login/splash_screen.dart';
import '../screens/login/sign_in_screen.dart';
import '../screens/login/password_screen.dart';
import '../screens/login/create_account_screen.dart';
import '../screens/login/forgot_password_screen.dart';
import '../screens/login/email_sent_screen.dart';
import '../screens/login/about_yourself_screen.dart';

class AppRoutes {

  static const String splash = '/';
  static const String signIn = '/sign-in';
  static const String password = '/password';
  static const String createAccount = '/create-account';
  static const String forgotPassword = '/forgot-password';
  static const String emailSent = '/email-sent';
  static const String aboutYourself = '/about-yourself';
  static const String homePage = '/home-page';
  static const String categoriesPage = '/category';


  static MaterialPageRoute<dynamic> _buildRoute(Widget screen) {
    return MaterialPageRoute(builder: (_) => screen);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return _buildRoute(const SplashScreen());
      case signIn:
        return _buildRoute(const SignInScreen());
      case password:
        return _buildRoute(const PasswordScreen());
      case createAccount:
        return _buildRoute(const CreateAccountScreen());
      case forgotPassword:
        return _buildRoute(const ForgotPasswordScreen());
      case emailSent:
        return _buildRoute(const EmailSentScreen());
      case aboutYourself:
        return _buildRoute(const AboutYourselfScreen());
      case homePage:
        return _buildRoute(const HomePage());
      case categoriesPage:
        return _buildRoute(const CategoriesPage());
      default:
        return _buildRoute(const Scaffold(
          body: Center(child: Text('Page not found')),
        ));
    }
  }
}
