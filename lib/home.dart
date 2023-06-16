import 'package:flutter/material.dart';
import 'package:monitoring_of_degree_work/Routes/routes.dart';
import 'package:monitoring_of_degree_work/nav_bar.dart';

void main() => runApp(const Homepage());

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pagina Principal',
    );
  }
}
