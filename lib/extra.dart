import 'dart:async';
import 'package:flutter/material.dart';



class AdvertisementSlider extends StatefulWidget {
  @override
  _AdvertisementSliderState createState() => _AdvertisementSliderState();
}

class _AdvertisementSliderState extends State<AdvertisementSlider> {
  final PageController _pageController = PageController(viewportFraction: 0.99);
  int _currentPage = 0;

  final List<String> advertiseImages = [
    'assets/Ad1.jpg',
    'assets/Ad2.jpg',
    'assets/Ad3.jpg',
    'assets/Ad4.jpg',
    'assets/Ad5.jpg',
  ];

  @override
  void initState() {
    super.initState();
    // Auto page change every second
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
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
    return Column(
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
    );
  }
}
