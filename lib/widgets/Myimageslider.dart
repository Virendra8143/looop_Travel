import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Myimageslider extends StatefulWidget {
  const Myimageslider({Key? key}) : super(key: key);

  @override
  State<Myimageslider> createState() => _MyimagesliderState();
}

class _MyimagesliderState extends State<Myimageslider> {
  final myitems = [
   Image.asset('assets/udaipur1.jpg',fit: BoxFit.cover),
    Image.asset('assets/udaipur3.jpg',fit: BoxFit.cover,),
    Image.asset('assets/bridge.jpg',fit: BoxFit.cover),
    Image.asset('assets/chittor.jpg',fit: BoxFit.cover),
  ];

  int mycurrentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.all(8) ,// Wrap the Column with a Container
        height: 300,
       width: MediaQuery.of(context).size.width,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15)
       ),
       // Set a fixed height
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 200),

                  autoPlayInterval: Duration(seconds: 2),
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      mycurrentindex = index;
                    });
                  },
                ),
                items: myitems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
