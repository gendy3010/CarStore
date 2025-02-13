

import 'package:carz/Features/Featured%20Home/presentation/views/widgets/Featured%20Cars%20Listview.dart';
import 'package:carz/Features/Featured%20Home/presentation/views/widgets/Recomended%20Gridview.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../../../../core/Styles/styles.dart';
import '../../../../core/Utils/Widgets/Custom TextField.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu_sharp,color: Colors.black,),
          title: Center(
            child: Text(
              'CarStore',
              style: Style.textStyle22,),
          ),
          actions: [
            Image.asset('assets/images/codicon_bell-dot.png'),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 320,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: CustomTextFormField(
                                    prefix: Icon(Icons.search),
                                    hintText: 'Search for Honda Pilot 7-Passenger',
                                    warninText: 'warninText'),
                              ),
                            ),
                            Image.asset('assets/images/filter.png'),

                          ],
                        ),
                        FeaturedCarsListView(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Text(
                                'Recommended',
                                style: Style.textStyle20,),
                              Spacer(),
                              Text(
                                'See all',
                                style: Style.textStyle16.copyWith(color: Colors.grey),),

                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: TwoColumnListView(),
            ),
          ],
        ),




        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.grey,),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite,color: Colors.grey,),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.grey,),
              label: '',
            ),


          ],
        ),

      ),
    );
  }
}


