import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'LogIn Pages/Forget PIN Page.dart';
import 'LogIn Pages/LogInPage.dart';
import 'LogIn Pages/QR Page.dart';
import 'Option Pages/Cash out page.dart';
import 'Option Pages/Mobile Recharge.dart';
import 'Option Pages/Sent Money.dart';
import 'extra.dart';

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
      home: CashOutPage(),
    );
  }
}
