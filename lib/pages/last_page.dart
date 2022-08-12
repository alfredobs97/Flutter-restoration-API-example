import 'package:flutter/material.dart';
import 'package:restoration_api/app_router.dart';
import 'package:restoration_api/pages/second_page.dart';

class LastPage extends StatelessWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last Page'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue[100],
              child: const Text('Go to second page!'),
              onPressed: () => Navigator.of(context).restorablePush(AppRouter.buildSecondPageRoute),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.blue[100],
              child: const Text('Return back!'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    );
  }
}
