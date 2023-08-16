import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/loading.dart';
import 'pages/course.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
    routes:{
      '/': (context) => Loading(),
      //'/home': (context) => Home(),
      //'/profile' : (context) => Profile(),
      '/course' : (context) => Course(),
    }
    ));

