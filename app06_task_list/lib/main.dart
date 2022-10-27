// ignore_for_file: prefer_const_constructors

import 'package:app06_task_list/pages/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'firebase_options.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(MaterialApp(
    title: 'Task List',
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login': ((context) => LoginPage())},
  ));
}
