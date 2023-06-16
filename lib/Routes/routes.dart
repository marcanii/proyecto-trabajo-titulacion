import 'package:flutter/material.dart';
import 'package:monitoring_of_degree_work/Login/login_page.dart';
import 'package:monitoring_of_degree_work/Login/signup_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'loginPage': (_) => const LoginPage(),
  'signUpPage': (_) => const SignUpPage(),
};
