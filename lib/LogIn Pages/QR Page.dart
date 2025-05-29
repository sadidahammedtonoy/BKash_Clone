import 'package:flutter/material.dart';

import '../Fixed information.dart';

class QR_Page extends StatelessWidget {
  const QR_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My QR",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(ColorCode),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset("assets/QR.png"),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        "Share QR code",
                        style: TextStyle(fontSize: 15, color: Color(ColorCode)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              side: BorderSide(color: Color(ColorCode)),
                              foregroundColor: Color(ColorCode)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download_for_offline,
                                  color: Color(ColorCode),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Download",
                                  style: TextStyle(
                                      color: Color(ColorCode), fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        )),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              side: BorderSide(color: Color(ColorCode)),
                              foregroundColor: Color(ColorCode)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.share,
                                  color: Color(ColorCode),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(
                                      color: Color(ColorCode), fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
