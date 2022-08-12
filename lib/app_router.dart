import 'package:flutter/material.dart';
import 'package:restoration_api/pages/last_page.dart';
import 'package:restoration_api/pages/second_page.dart';

class AppRouter {
  static Route buildSecondPageRoute(BuildContext context, Object? params) => MaterialPageRoute(
        builder: (_) => const SecondPage(),
      );

  static Route buildLastPageRoute(BuildContext context, Object? params) => MaterialPageRoute(
        builder: (_) => const LastPage(),
      );
}
