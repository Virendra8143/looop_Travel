import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:looop_travel/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore Routes,Hotels and Food",
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),

            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
            height: 300.0,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Hotel hotel = hotels[index];
                return Container(
                  width: 240.0,
                  margin: EdgeInsets.all(10.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 10.0,
                        child: Container(
                          height: 120.0,
                          width: 220.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Near By Location",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),

                               
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              )
                            ]),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                width: 220.0,
                                height: 180.0,
                                fit: BoxFit.cover,
                                image: AssetImage(hotel.imageUrl),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ))
      ],
    );
  }
}