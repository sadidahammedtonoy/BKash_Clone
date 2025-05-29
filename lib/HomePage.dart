import 'package:flutter/material.dart';
import 'dart:async';
import 'Fixed information.dart';
import 'Option Pages/Mobile Recharge.dart';
import 'Option Pages/Not Yet build.dart';
import 'Option Pages/Sent Money.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String Balance = "Tap for Balance";
  final PageController _pageController = PageController(viewportFraction: 0.99);
  int _currentPage = 0;
  int _currentIndex = 0;

  void _OptionPressed(int value){
    value == 0 ? Navigator.push(context, MaterialPageRoute(builder: (context) => sentMoney())) :
        value == 1 ? Navigator.push(context, MaterialPageRoute(builder: (context) => mobileRecharge())) :
    Navigator.push(context, MaterialPageRoute(builder: (context) => NotYetBuild()));
  }
  @override
  void initState() {
    super.initState();
    // Auto page change every second
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < advertiseImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(
          child: Text("data"),
        ),
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/id/1682296067/photo/happy-studio-portrait-or-professional-man-real-estate-agent-or-asian-businessman-smile-for.jpg?s=612x612&w=0&k=20&c=9zbG2-9fl741fbTWw5fNgcEEe4ll-JegrGlQQ6m54rg="),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        Name,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                  Card(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Balance == "250"
                              ? Balance = "Tap for Balance"
                              : Balance == "Tap for Balance"
                                  ? Balance = "250"
                                  : null;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 2, right: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Color(ColorCode),
                            ),
                            Container(
                                width: 110,
                                child: Text(
                                  Balance,
                                  style: TextStyle(color: Color(ColorCode)),
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          centerTitle: false,
          backgroundColor: Color(ColorCode),
          actions: [
            Builder(
                builder: (context) => InkWell(
                    child: Image.network(
                        height: 35,
                        width: 35,
                        "https://trickbd.com/wp-content/uploads/2021/07/31/icon_reward-points.png"))),
            SizedBox(
              width: 10,
            ),
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
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400, // Set height as needed
                child: Card(
                  color: Colors.white,
                  child: GridView.count(
                    crossAxisCount: 4,
                    children: List.generate(OptionName.length, (index) {
                      return InkWell(
                        onTap: (){
                          _OptionPressed(index);
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              OptionLogo[index],
                              height: 60,
                              width: 60,
                            ),
                            Text(
                              OptionName[index],
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 10,),
          Column(
            children: [
              SizedBox(
                height: 100,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: advertiseImages.length,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          advertiseImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(advertiseImages.length, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: _currentPage == index ? 10 : 6,
                    height: _currentPage == index ? 10 : 6,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? Colors.pink : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ],
          )
            ],
          ),
        ),


      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: Color(ColorCode),
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, size: 30),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner, size: 30),
                label: "Scan QR",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail, size: 30),
                label: "Inbox",
              ),
            ],
          ),
        ),
      ),




    );
  }
}
