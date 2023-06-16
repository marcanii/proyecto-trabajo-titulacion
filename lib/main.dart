import 'package:flutter/material.dart';
import 'package:monitoring_of_degree_work/Routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi - Login',
      initialRoute: 'loginPage',
      routes: routes,
    );
  }
}
