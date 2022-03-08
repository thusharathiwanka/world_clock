import 'package:flutter/material.dart';

import 'package:world_clock/screens/change_location.dart';
import 'package:world_clock/screens/home.dart';
import 'package:world_clock/screens/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const ChangeLocation(),
    },
  ));
}
