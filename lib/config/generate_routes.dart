import 'package:flutter/material.dart';
import 'package:task_elevate/config/routes.dart';

import '../Feature/product/presentation/pages/product_screen.dart';


class RoutesGenerate{
static   Map<String, Widget Function(BuildContext)>  routes={
    RoutesApp.productRoute:(context)=>ProductScreen()

  };
}