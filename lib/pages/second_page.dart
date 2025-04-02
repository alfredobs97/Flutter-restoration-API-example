import 'package:flutter/material.dart';
import 'package:restoration_api/app_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue[100],
              child: const Text('Go to last page!'),
              onPressed: () => Navigator.of(context).restorablePush(AppRouter.buildLastPageRoute),
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
