import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stateful_widget_assignment/screen/my_bag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.raleway().fontFamily,
      ),
      home: const MyBag(),
    );
  }
}
