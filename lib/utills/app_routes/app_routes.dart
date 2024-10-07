import 'package:flutter/material.dart';
import 'package:student_data/add_student_data_page/add_student_data_page.dart';
import 'package:student_data/home_page/home_page.dart';
import 'package:student_data/splash_screen/splash_screen.dart';

class AppRoutes {
  // forSingleTonClass
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String splashScreen = '/';
  String homePage = 'HomePage';
  String detailPage = 'DetailPage';
  String addDataPage = 'AddDataPage';

  Map<String, Widget Function(BuildContext)> route = {
    '/': (context) => const SplashScreen(),
    'HomePage': (context) => const HomePage(),
    'AddDataPage': (context) => const AddStudentDataPage(),
  };
}