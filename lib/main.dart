
import 'package:flutter/material.dart';
import 'package:mahmudul/all_country/all_countryclass.dart';
import 'package:mahmudul/carosel%20slider/caroselsliderclass.dart';
import 'package:mahmudul/homepage/homepageclass.dart';

import 'sharedpreference/sharedpreferenceclass.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPreferenceClass(),
    );
  }
}