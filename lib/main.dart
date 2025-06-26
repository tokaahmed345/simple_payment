import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:simplepaymentcard/core/utils/app-pages/app_pages.dart';
import 'package:simplepaymentcard/core/utils/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      theme: AppTheme.myTheme,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
 
    );
  }
  
  }
