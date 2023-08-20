import 'package:billmanager/components/customappbar.dart';
import 'package:billmanager/components/loginbutton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        title: const Text('Seus roles', style: TextStyle(fontSize: 30)),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LoginButton(
                text: "convidado",
                icon: const Icon(Icons.person),
                color: Colors.purple,
                onClick: () {
                  Navigator.pushNamed(context, '/hangout');
                }),
          ],
        ),
      ),
    );
  }
}
