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


  // Remember this note
  /**
   *  MVVM Architecture: is divided into 2 main layers:
   * 
   * 1. Presentation Layer: Contains the UI and the logic to handle user interactions.  (View - ViewModel)
   * 2- Data Layer: Contains the data sources and repositories that provide data to the presentation layer. (Model)
   * 
   * 
   * 
   */
