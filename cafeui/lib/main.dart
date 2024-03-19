import 'package:cafeui/screens/homePage.dart';
import 'package:cafeui/screens/loginPage.dart';
import 'package:cafeui/screens/menuScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: LoginPage(),

      routes: {
        // '/home': (context) => homePage();
        '/login': (context) => LoginPage(),
        // '/menuscreen': (context) => Menucreen(),
        // '/signupscreen': (context) => signuppage(),
        
      },
    );
  }
}

