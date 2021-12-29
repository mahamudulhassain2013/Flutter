
import 'package:flutter/material.dart';
import 'package:mahmudul/country_details/country_details.dart';

class AllCountryClass extends StatefulWidget {
  String? continent;

  @override
  _AllCountryClassState createState() => _AllCountryClassState();

  AllCountryClass({this.continent});
}

class _AllCountryClassState extends State<AllCountryClass> {
  List Country = [
    ['Bangladesh','assets/pictures/bangladesh.png','Taka','16,00,000', 'Dhaka' ],
    ['India','assets/pictures/bangladesh.png','Rupi','132,00,000', 'New Delhi' ],
    ['Pakisthan','assets/pictures/bangladesh.png','Rupi','132,00,000', 'New Delhi' ],
    ['China','assets/pictures/bangladesh.png','Rupi','132,00,000', 'New Delhi' ],
    ['Afganisthan','assets/pictures/bangladesh.png','Rupi','132,00,000', 'New Delhi' ]
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.continent}'),centerTitle: true,),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,


    ),
    itemCount: Country.length,
    itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CountryDetailsClass(
                  countryName:Country[index][0],
                  flag:Country[index][1],
                  currency:Country[index][2],
                  population:Country[index][3],
                  capital:Country[index][4],
                )));
              },

              child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      children: [
        Image.asset(Country[index][1]),
        Text(Country[index][0]),
    ],
    ),
              ),
            );
    },
    ));
  }
}
