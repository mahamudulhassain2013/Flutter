
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CarouselSliderClass extends StatefulWidget {
  const CarouselSliderClass({Key? key}) : super(key: key);

  @override
  _CarouselSliderClassState createState() => _CarouselSliderClassState();
}

class _CarouselSliderClassState extends State<CarouselSliderClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carosel Slider'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                Image.asset('assets/pictures/bangladesh.png'),
                Image.asset('assets/pictures/bangladesh.png'),
                Image.asset('assets/pictures/bangladesh.png'),
              ],

            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16/9,
              autoPlayCurve: Curves.elasticIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction: 0.8,
              reverse: true,

            ),
          ),
        ],
      ),
    );
  }
}
