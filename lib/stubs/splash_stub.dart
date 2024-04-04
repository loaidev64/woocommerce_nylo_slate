String stubSplash() => '''
import 'package:flutter/material.dart';
import 'package:flutter_app/resources/pages/home_page.dart';
import 'package:flutter_app/resources/widgets/logo_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class SplashPage extends NyStatefulWidget {
  static const path = '/splash';

  SplashPage({super.key}) : super(path, child: _SplashPageState());
}

class _SplashPageState extends NyState<SplashPage> {
  @override
  init() async {
    //TODO:: change this later
    Future.delayed(Duration(seconds: 2))
        .then((value) => routeTo(HomePage.path));
  }

  /// Use boot if you need to load data before the [view] is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash")),
      body: SafeArea(
        child: Center(
          child: Logo(),
        ),
      ),
    );
  }
}
''';
