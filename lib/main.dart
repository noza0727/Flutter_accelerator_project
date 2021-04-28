import 'package:accelerator_flutter/profile.dart';
import 'package:flutter/material.dart';
import 'package:accelerator_flutter/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/profile',
  routes: {
    '/':(context) => HomePage(),
    '/profile': (context) => ProfilePage(),
  },
));
