import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:practice_1/HomePage.dart';
import 'package:practice_1/LogIn%20Pages/QR%20Page.dart';

import '../Fixed information.dart';
import 'Forget PIN Page.dart';

class LogIn_Page extends StatefulWidget {
  const LogIn_Page({super.key});

  @override
  State<LogIn_Page> createState() => _LogIn_PageState();
}

class _LogIn_PageState extends State<LogIn_Page> {
  TextEditingController NumberController = TextEditingController();
  TextEditingController PINController = TextEditingController();

  String Language = "বাংলা";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Language == "বাংলা"
                            ? Language = "English"
                            : Language == "English"
                                ? Language = "বাংলা"
                                : null;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        side: BorderSide(color: Color(ColorCode)),
                        foregroundColor: Color(ColorCode)),
                    child: Text(Language)),
              ),
            ],
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(height: 50, width: 50, "assets/BKash_Logo.png"),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => QR_Page()));
                      },
                      icon: Icon(
                        size: 50,
                        Icons.qr_code_2,
                        color: Color(ColorCode),
                      ))
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Log In",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "to your bKash account",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Account Number",
                style: TextStyle(fontSize: 12),
              ),
              TextField(
                controller: NumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter your bKash number",
                    hintStyle: TextStyle(
                      color: CupertinoColors.systemGrey3,
                      fontSize: 12,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.3, color: CupertinoColors.systemGrey3)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      width: 0.3,
                      color: CupertinoColors.systemGrey3,
                    ))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "bKash PIN",
                style: TextStyle(fontSize: 12),
              ),
              TextField(
                onSubmitted: (Context) {
                  setState(() {
                    PINController.clear();
                  });

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Homepage()));

                },
                controller: PINController,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter bKash PIN",
                    suffixIcon: Icon(
                      Icons.lock,
                      size: 25,
                      color: Color(ColorCode),
                    ),
                    hintStyle: TextStyle(
                      color: CupertinoColors.systemGrey3,
                      fontSize: 12,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.3, color: CupertinoColors.systemGrey3)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      width: 0.3,
                      color: CupertinoColors.systemGrey3,
                    ))),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ForgetPIN()));
                  },
                  child: Text(
                    "Forget PIN?Try PIN Reset",
                    style: TextStyle(fontSize: 12, color: Color(ColorCode)),
                  )),
            ],
          ),
        ));
  }
}
