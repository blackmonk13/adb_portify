import 'package:adb_portify/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: 'Adb Portify',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 89, 255),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
