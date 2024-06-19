// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:turba/pages/foretell_crops_page.dart';
import 'package:turba/pages/forrtell_crops_result_page.dart';
import 'package:turba/pages/home_page.dart';
import 'package:turba/pages/intro_page.dart';
import 'package:turba/pages/login_page.dart';
import 'package:turba/pages/sginup.dart';

import 'pages/crops_by_time_page.dart';
import 'pages/item_details_page.dart';
import 'pages/market_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turba',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home:  MarketPage() ,
    );
  }
}