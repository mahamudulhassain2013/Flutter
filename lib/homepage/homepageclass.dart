

import 'package:flutter/material.dart';

class  extends StatefulWidget {
  const ({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<> {

  List Continent [
    'Asia',
    'Europ',
    'Afrika',
    'North Amerika',
    'South Amerika',
    'Oceania',
    'Antertika',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: CustomScrollView(
    slivers: [
      SliverAppBar(
      collapsedHeight: 160,
      toolbarHeight: 100,
      expandedHeight: 300.0,
      flexibleSpace: FlexibleSpaceBar(
      background: Image.asset(
      'images/plastic_surgery.png',
      fit: BoxFit.fill,
),
      ),
      ),
    SliverList(
    delegate: SliverChildBuilderDelegate(
    (context,index) {
      return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      height: 100 ,
      decoration: BoxDecoration(

),


      )
      title: Text(Continent[index]),
      );
},
childCount: Continent.length,
    ),


),
],
    )
    );
  }
}
