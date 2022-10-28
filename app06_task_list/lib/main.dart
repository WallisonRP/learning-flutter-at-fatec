// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:app06_task_list/pages/criar_conta_page.dart';
import 'package:app06_task_list/pages/login_page.dart';
import 'firebase_options.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  //
  // INICIALIZAÇÃO DO FIREBASE
  //
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    title: 'Task List',
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': ((context) => LoginPage()),
      'criar_conta': ((context) => CriarContaPage()),
      },
  ));
}
