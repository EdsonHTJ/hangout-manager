import 'package:billmanager/addhangout/addhangout.dart';
import 'package:billmanager/login/login.dart';

import '../../home/home.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/addhangout': (context) => const AddHangoutScreen(),
};
