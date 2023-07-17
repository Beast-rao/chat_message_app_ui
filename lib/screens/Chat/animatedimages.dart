import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 3, "image_path": 'assets/images/10.jpeg'},
    {"id": 7, "image_path": 'assets/images/14.jpg'},
    {"id": 8, "image_path": 'assets/images/a.jpg'},
    {"id": 9, "image_path": 'assets/images/m.jpg'},
    {"id": 10, "image_path": 'assets/images/u.jpg'},
    {"id": 11, "image_path": 'assets/images/w.jpg'},
    {"id": 12, "image_path": 'assets/images/8.jpeg'},
    {"id": 13, "image_path": 'assets/images/7.jpeg'},
    {"id": 14, "image_path": 'assets/images/4.jpg'},
    {"id": 15, "image_path": 'assets/images/3.jpg'},
    {"id": 16, "image_path": 'assets/images/2.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("FRIENDS HERE"),
        ),
        body: Column(children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 1,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.red
                                : Colors.teal),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          colorizeAnimation(),
        ]),
      ),
    );
  }
}

Widget colorizeAnimation() {
  const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  const colorizeTextStyle = TextStyle(
    fontSize: 30.0,
  );
  return Container(
    color: Colors.transparent,
    height: 60,
    width: double.infinity,
    child: Center(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            "Lets Begin here",
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'WARIS ABBAS',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'ABDUL AHAD',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'HAMID MAJEED',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'ABDUL MOUEED',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'USAIDULLAH JAMIL',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'R APKA APNA... ',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'RAO FAHEEM',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
        ],
        repeatForever: true,
      ),
    ),
  );
}
