//import 'package:firebase_core/firebase_core.dart';
import 'package:app_dist_ita/resources/style.dart';
import 'package:app_dist_ita/view/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: "Distribuidora Itabirana",
    home: const LogIn(),
    debugShowCheckedModeBanner: false,
    theme: estilo(),
  )
);


