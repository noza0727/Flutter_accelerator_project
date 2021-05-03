import 'package:accelerator_flutter/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:accelerator_flutter/homePage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/profile',
  routes: {
    '/':(context) => HomePage(),
    '/profile': (context) => ProfilePage(),
  },
));
