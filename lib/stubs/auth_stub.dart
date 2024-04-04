String stubLoginPage() => '''
import 'package:flutter/material.dart';
import 'package:flutter_app/resources/widgets/button_widget.dart';
import 'package:flutter_app/resources/widgets/logo_widget.dart';
import 'package:flutter_app/resources/widgets/text_form_field_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/login_controller.dart';

class LoginPage extends NyStatefulWidget<LoginController> {
  static const path = '/login';

  LoginPage({super.key}) : super(path, child: _LoginPageState());
}

class _LoginPageState extends NyState<LoginPage> {
  /// [LoginController] controller
  LoginController get controller => widget.controller;

  @override
  init() async {}

  /// Use boot if you need to load data before the view is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Logo(),
                Text('email'.tr()),
                TextFormFieldWidget(
                  onSaved: (email) => controller.email = email,
                ),
                Text('password'.tr()),
                TextFormFieldWidget(
                  onSaved: (password) => controller.password = password,
                ),
                ButtonWidget(
                  onPressed: controller.login,
                  text: 'login'.tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
''';

String stubLoginController() => '''
import 'package:flutter_app/resources/pages/home_page.dart';
import 'package:flutter_app/resources/widgets/button_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '/app/controllers/controller.dart';
import 'package:flutter/widgets.dart';

class LoginController extends Controller {
  String? email;

  String? password;

  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  void login() async {
    updateState(ButtonWidget.state, data: true);
    validate(
      rules: {
        'email': [email, 'required'],
        'password': [password, 'required'],
      },
      onSuccess: () {
        updateState(ButtonWidget.state, data: false);
        //TODO:: make the actual login here
        routeTo(HomePage.path);
      },
      onFailure: (exception) {
        updateState(ButtonWidget.state, data: false);
      },
    );
  }
}
''';
