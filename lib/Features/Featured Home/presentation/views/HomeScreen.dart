import 'package:carz/Features/Featured%20Home/presentation/views/widgets/Featured%20Cars%20Listview.dart';
import 'package:carz/Features/Featured%20Home/presentation/views/widgets/NavBar.dart';
import 'package:carz/Features/Featured%20Home/presentation/views/widgets/Recomended%20Gridview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/Styles/styles.dart';
import '../../../../core/Utils/Widgets/Custom TextField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu_sharp, color: Colors.black),
          title: Center(
            child: Text(
              'CarStore',
              style: Style.textStyle22,
            ),
          ),
          actions: [
            Image.asset('assets/images/codicon_bell-dot.png'),
          ],
        ),
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
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
                                  warninText: 'warninText',
                                ),
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
                              Text('Recommended', style: Style.textStyle20),
                              Spacer(),
                              Text(
                                'See all',
                                style: Style.textStyle16.copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: TwoColumnListView(),
                ),
              ],
            ),


            Positioned(
              bottom: 25,
              left: 30,
              right: 30,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CustomBottomNavBar(
                    selectedIndex: _selectedIndex,
                    onItemTapped: _onItemTapped,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
