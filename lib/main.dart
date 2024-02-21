import 'package:calc/dependency.dart';
import 'package:calc/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:calc/pages/home.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  DependecyInjection.init(); 
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Myapp(),
    ),
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}