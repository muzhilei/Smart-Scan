import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:smart_scan/home/bindings/home_bindings.dart';
import 'package:smart_scan/home/views/home_views.dart';
import 'package:smart_scan/homefragment/bindings/home_fragment_bindings.dart';
import 'package:smart_scan/homefragment/views/home_fragment_views.dart';
import 'package:smart_scan/settings/bindings/setting_bindings.dart';
import 'package:smart_scan/settings/views/setting_views.dart';
import 'package:smart_scan/splash/bindings/splash_bindings.dart';
import 'package:smart_scan/splash/views/splash_views.dart';
import 'package:smart_scan/textscan/bindings/textscan_bindings.dart';
import 'package:smart_scan/textscan/views/textscan_views.dart';
import 'package:smart_scan/l10n/generated/l10n.dart';

void main() {
  runApp(GetMaterialApp(
    // 配置本地化代理
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      Locale('en', 'US'), // 英语支持，可根据需要添加更多语言支持
      Locale('zh', 'CN'), // 中文支持，可根据需要添加更多语言支持
    ],
    // 当前语言
    locale: const Locale('en'),
    // 语言解析回调
    localeResolutionCallback: (locale, supportedLocales) {
      if (locale != null && S.delegate.isSupported(locale)) {
        return locale;
      }
      return const Locale('en'); // 默认使用中文
    },
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/splash', page: () => splash_views(), binding: splash_bindings()),
        GetPage(name: '/home', page: () => home_views(),binding: home_bindings()),
        GetPage(name: '/homefragment', page: () => home_fragment_views(),binding: home_fragment_bindings()),
        GetPage(name: '/settings', page: () => setting_views(),binding: setting_bindings()),
        GetPage(name: '/textScan', page: () => textscan_views(),binding: textscan_bindings()),

      ],
    ));
}
