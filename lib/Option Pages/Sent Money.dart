import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Fixed information.dart';

class sentMoney extends StatefulWidget {
  const sentMoney({super.key});

  @override
  State<sentMoney> createState() => _sentMoneyState();
}

class _sentMoneyState extends State<sentMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Sent Money",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(ColorCode),
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            Builder(
                builder: (context) => InkWell(
                      child: Image.asset(
                          height: 35, width: 35, "assets/White_Logo.PNG"),
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    )),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Enter name or number",
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color(0xFFF7F7F7),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.3)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 0.3,
                      ))),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 130,
                              child: Card(
                                elevation: 1,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                          height: 50,
                                          width: 50,
                                          "assets/Prio Numbers.jpg"),
                                      Text(
                                        "Prio Numbers",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: 130,
                              child: Card(
                                elevation: 1,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                          height: 50,
                                          width: 50,
                                          "assets/Auto Pay.jpg"),
                                      Text(
                                        "Auto Pay",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: 130,
                              child: Card(
                                elevation: 1,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                          height: 50,
                                          width: 50,
                                          "assets/Group sent money.jpg"),
                                      Text(
                                        "Group Sent Money",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 250,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Text("Recent", style: TextStyle(fontSize: 10)),
                          ),
                          Expanded(
                            // Fixes height issue
                            child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.yellow,
                                  ),
                                  title: Text("Sadid Ahammed"),
                                  subtitle: Text("01878492887"),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 700,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("All Contact",
                                style: TextStyle(fontSize: 10)),
                          ),
                          Expanded(
                            // Fixes height issue
                            child: ListView.builder(
                              itemCount: 30,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.green,
                                  ),
                                  title: Text("Saidul Islam"),
                                  subtitle: Text("01878492887"),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
