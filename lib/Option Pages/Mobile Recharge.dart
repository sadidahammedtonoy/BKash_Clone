import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Fixed information.dart';

class mobileRecharge extends StatefulWidget {
  const mobileRecharge({super.key});

  @override
  State<mobileRecharge> createState() => _mobileRechargeState();
}

class _mobileRechargeState extends State<mobileRecharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Mobile Recharge",
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
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
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
                                            "assets/my offer.png"),
                                        Text(
                                          "My Offer",
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
                                            "assets/auto recharge.png"),
                                        Text(
                                          "Auto-Recharge",
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
                                    backgroundImage: NetworkImage(
                                        "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
                                  ),
                                  title: Text("Khairul Ahammed"),
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
                                    backgroundImage: NetworkImage(
                                        "https://img.freepik.com/premium-vector/avatar-profile-icon-flat-style-female-user-profile-vector-illustration-isolated-background-women-profile-sign-business-concept_157943-38866.jpg?semt=ais_hybrid&w=740"),
                                  ),
                                  title: Text("Jannat"),
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
