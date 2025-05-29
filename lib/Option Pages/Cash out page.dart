import 'package:flutter/material.dart';
import '../Fixed information.dart'; // Make sure this file exists and ColorCode is defined

class CashOutPage extends StatefulWidget {
  const CashOutPage({Key? key}) : super(key: key);

  @override
  State<CashOutPage> createState() => _CashOutPageState();
}

class _CashOutPageState extends State<CashOutPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Cash Out",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(ColorCode), // Make sure ColorCode is a valid int
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            Builder(
              builder: (context) => InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/White_Logo.PNG",
                    height: 35,
                    width: 35,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Container(
              color: Colors.white,
              child: TabBar(
                labelColor: Color(ColorCode),
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.food_bank_outlined),
                        Text("Agent")
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.real_estate_agent_outlined),
                        Text("ATM")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Enter Agent number or name",
                      hintStyle: TextStyle(
                        fontSize: 12
                      ),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color(0xFFF7F7F7),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.5)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.5)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  child: OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        side: BorderSide(
                          color: Color(ColorCode)
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          
                        )
                      ),

                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.qr_code_2, color: Color(ColorCode),),
                    SizedBox(width: 5,),
                    Text("Tab To Scan QR Code", style: TextStyle(color: Color(ColorCode)),)
                  ],)),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}
