
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class FeaturedCarsListView extends StatelessWidget {
  const FeaturedCarsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Image.asset('assets/images/featuredCar.png',height: 60,width: 300,),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}




