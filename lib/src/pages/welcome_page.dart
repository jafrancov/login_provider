import 'package:flutter/material.dart';
import 'package:login_provider/src/widgets/welcome_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: WelcomeText()),
    );
  }
}
