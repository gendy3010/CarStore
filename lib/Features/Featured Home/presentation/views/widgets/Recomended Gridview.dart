import 'package:carz/core/Styles/styles.dart';
import 'package:flutter/material.dart';

import '../../../../Featured Car Details/presentation/views/CarDetailsScreen.dart';

class TwoColumnListView extends StatelessWidget {
  const TwoColumnListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> CarDetailsScreen())),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/Rectangle 13.png',height: 120,width: 220,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        'Audi e-tron Premium',
                      style: Style.textStyle14,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        'Rs. 54,77,823.73',
                        style: Style.textStyle14.copyWith(color: Colors.grey),),
                    ),

                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
