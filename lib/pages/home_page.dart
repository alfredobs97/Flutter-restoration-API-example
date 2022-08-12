import 'package:flutter/material.dart';
import 'package:restoration_api/app_router.dart';
import 'package:restoration_api/pages/last_page.dart';
import 'package:restoration_api/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.indigo[100],
              child: const Text('Go to second page!'),
              onPressed: () => Navigator.of(context).restorablePush(AppRouter.buildSecondPageRoute),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.indigo[100],
              child: const Text('Go to last page!'),
              onPressed: () => Navigator.of(context).restorablePush(AppRouter.buildLastPageRoute),
            )
          ],
        ),
      ),
    );
  }
}
