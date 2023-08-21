import 'package:billmanager/components/customappbar.dart';
import 'package:billmanager/components/hangoutitem.dart';
import 'package:billmanager/components/loginbutton.dart';
import 'package:billmanager/shared/db/hive.dart';
import 'package:billmanager/shared/models/hangout.dart';
import 'package:billmanager/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Hangout> hangouts = [];

  _HomeScreenState() {
    fetchHangouts();
  }

  void fetchHangouts() async {
    var hangouts = await DataBase.readRangouts();
    setState(() {
      this.hangouts = hangouts;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(hangouts);
    return Scaffold(
        appBar: AppBar(
          bottomOpacity: 0,
          title: const Text('Seus roles', style: TextStyle(fontSize: 30)),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView(
                shrinkWrap: true,
                children: hangouts
                    .map((hangout) => HangoutItemWidget(hangout: hangout))
                    .toList(),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.buttonPrimaryColor,
          onPressed: () {
            Navigator.pushNamed(context, "/addhangout");
          },
          child: const Icon(Icons.add),
        ));
  }
}
