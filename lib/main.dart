import 'package:anatomy/module/HomeModule/Widgets/home_drawer.dart';
import 'package:anatomy/module/HomeModule/home_view/home_view/home_view.dart';
import 'package:anatomy/module/HomeModule/home_view/home_view_binding/home_view_binding.dart';
import 'package:anatomy/module/slpash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: const HomePageDrawer(),
          initialBinding: MyPageBinding(),
        );
      },
    );
  }
}
