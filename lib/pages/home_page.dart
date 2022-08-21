import 'package:flutter/material.dart';
import 'package:restoration_api/app_router.dart';
import 'package:restoration_api/pages/last_page.dart';
import 'package:restoration_api/pages/second_page.dart';
import 'package:restoration_api/utils/gender_enum.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RestorationMixin {
  final _nameController = RestorableTextEditingController();
  final _surnameController = RestorableTextEditingController();

  final RestorableBool _isTermsChecked = RestorableBool(false);

  @override
  String? get restorationId => 'MyHomePageRestorationId';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_nameController, "nameController");
    registerForRestoration(_surnameController, "surnameController");
    registerForRestoration(_isTermsChecked, "termsChecked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Name input'),
              const SizedBox(height: 16),
              TextField(
                controller: _nameController.value,
              ),
              const SizedBox(height: 20),
              const Text('Surname input'),
              const SizedBox(height: 16),
              TextField(
                controller: _surnameController.value,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Accept terms & conditions'),
                  const SizedBox(width: 16),
                  Checkbox(
                    value: _isTermsChecked.value,
                    onChanged: (value) => setState(() {
                      _isTermsChecked.value = value ?? false;
                    }),
                  )
                ],
              ),
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
      ),
    );
  }
}
