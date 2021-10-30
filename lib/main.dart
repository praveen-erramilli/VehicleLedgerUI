import 'package:flutter/material.dart';
import 'package:vehicle_ledger/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.orange,
            fontFamily: 'Lato',
            appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromARGB(255, 243, 113, 33)),
          elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 243, 113, 33))),)
        ),
        home: const HomePage());
  }
}
