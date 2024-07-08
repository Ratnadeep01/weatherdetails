import 'package:flutter/material.dart';
import 'package:weatherdetails/utils/themes/app.theme.dart';
import 'package:get/get.dart';
import 'features/entryDetails/views/enterCity.screen.dart';
import 'features/weatherDetails/views/weatherDetails.screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: WAppTheme.customThemeData,
      home:  SearchCity(),
    );
  }
}