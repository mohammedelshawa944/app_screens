import 'package:app_screens/screens/home_screen.dart';
import 'package:app_screens/screens/invoices_screen.dart';
import 'package:app_screens/screens/more_screen.dart';
import 'package:app_screens/screens/orders_screen.dart';
import 'package:flutter/material.dart';

import '../widget/bottom_nav_bar.dart';


class MainAppView extends StatefulWidget {
  static String id = '/mainAppView';

  const MainAppView({super.key});

  @override
  State<MainAppView> createState() => _MainAppViewState();
}

class _MainAppViewState extends State<MainAppView> {
  int _currentIndex = 1;

  late List<Widget?> screensList = [
    const HomeScreen(),
    const OrdersScreen(),
    const InvoicesScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){},
      //    backgroundColor: Colors.purple,
      //   child: Icon(Icons.add,size: 30,),
      // ),
      body: screensList[_currentIndex],
      extendBody: true,
      bottomNavigationBar: CustomFloatingNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}