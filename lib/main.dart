//import 'package:dogs/profile_screen.dart';
import 'package:flutter/material.dart';
//import 'deep_tree.dart';
import 'e_commerce_screen_after.dart';
//import 'flex_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          elevation: 10,
          titleTextStyle: const TextTheme(
            headline6: TextStyle(
              fontFamily: 'LeckerLione',
              fontSize: 24,
            ),
          ).titleLarge,
        ),
      ),
      home: ECommerceScreen(),
    );
  }
}
