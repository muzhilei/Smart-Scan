import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_scan/home/bindings/home_bindings.dart';
import 'package:smart_scan/home/views/home_views.dart';
import 'package:smart_scan/homefragment/bindings/home_fragment_bindings.dart';
import 'package:smart_scan/homefragment/views/home_fragment_views.dart';
import 'package:smart_scan/splash/bindings/splash_bindings.dart';
import 'package:smart_scan/splash/views/splash_views.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/splash', page: () => splash_views(), binding: splash_bindings()),
      GetPage(name: '/home', page: () => home_views(),binding: home_bindings()),
      GetPage(name: '/homefragment', page: () => home_fragment_views(),binding: home_fragment_bindings())
    ],
  ));
}
