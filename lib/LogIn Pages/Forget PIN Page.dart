import 'package:flutter/material.dart';
import 'package:practice_1/Fixed%20information.dart';
import 'package:practice_1/main.dart';

class ForgetPIN extends StatefulWidget {
  const ForgetPIN({super.key});

  @override
  State<ForgetPIN> createState() => _ForgetPINState();
}

class _ForgetPINState extends State<ForgetPIN> {
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
              child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      Language == "বাংলা"
                          ? Language = "English"
                          : Language == "English"
                              ? Language = "বাংলা"
                              : null;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(ColorCode))),
                  child: Text(
                    Language,
                    style: TextStyle(color: Color(ColorCode)),
                  )),
            )
          ],
        ),
        iconTheme: IconThemeData(color: Color(ColorCode)),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(height: 50, width: 50, "assets/BKash_Logo.png"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Forgot PIN?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Try PIN Reset",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(forgetMsg),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/humanScanLogo.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Scan your face",
                            style: TextStyle(color: Color(ColorCode)),
                          ),
                          Text(
                            "If account is registered with Birth \nCertificate (Student Account only) or \nNID",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined, size: 20),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
