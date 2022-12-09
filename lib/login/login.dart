import 'package:billmanager/components/loginbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo(
              size: 150,
            ),
            LoginButton(
                text: "convidado",
                icon: const Icon(FontAwesomeIcons.person),
                color: Colors.purple,
                onClick: () {
                  Navigator.pushNamed(context, '/');
                }),
          ],
        ),
      ),
    );
  }
}
