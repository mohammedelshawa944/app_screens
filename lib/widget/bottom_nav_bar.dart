import 'package:app_screens/constant/sized_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFloatingNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;

  const CustomFloatingNavBar(
      {super.key, required this.currentIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      selectedItemColor: Colors.purple,
      selectedIconTheme: const IconThemeData(size: 28),
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
        BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined), label: 'الطلبيات'),
        // BottomNavigationBarItem(icon: Icon(Icons.add,size: 40,), label: '',),
        BottomNavigationBarItem(icon: Icon(Icons.inventory_outlined), label: 'الفواتير'),
        BottomNavigationBarItem(icon: Icon(Icons.playlist_add), label: 'المزيد')
      ],
    );
  }
}
