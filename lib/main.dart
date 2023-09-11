import 'package:app_screens/constant/keys.dart';
import 'package:app_screens/screens/home_screen.dart';
import 'package:app_screens/screens/invoices_screen.dart';
import 'package:app_screens/screens/main_page_view.dart';
import 'package:app_screens/screens/more_screen.dart';
import 'package:app_screens/screens/notification_screen.dart';
import 'package:app_screens/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(Keys.screenHeight, Keys.screenHeight),
      child: MaterialApp(
        routes: {
          HomeScreen.id: (context) => const HomeScreen(),
          InvoicesScreen.id:(context)=>const InvoicesScreen(),
          MainAppView.id:(context)=>const MainAppView(),
          MoreScreen.id:(context)=>const MoreScreen(),
          NotificationScreen.id: (context)=>const NotificationScreen(),
          OrdersScreen.id: (context)=>const OrdersScreen(),
        },
        home:const Directionality(
          textDirection: TextDirection.rtl,
            child: MainAppView()
        ),
      ),
    );
  }
}
