import 'package:flutter/material.dart';
import 'package:task_elevate/config/routes.dart';
import 'package:task_elevate/product/presentation/pages/product_screen.dart';

import 'config/generate_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: RoutesApp.productRoute,

      routes: RoutesGenerate.routes
    );
  }
}


