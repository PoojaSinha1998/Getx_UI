import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ui_sample/routes/app_pages.dart';
import 'package:ui_sample/screens/home_screens/home_binding.dart';
import 'package:ui_sample/screens/home_screens/home_page.dart';
import 'package:ui_sample/util/theme.dart';

import 'controller/bindings/controller_bindings.dart';

class MyApp extends StatefulWidget {
  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: ControllerBindings(),
        ),
        // GetPage(
        //   name: '/detail',
        //   page: () => DetailCountryScreen(),
        //   binding: ControllerBindings(),
        // )
      ],
    );
  }
}