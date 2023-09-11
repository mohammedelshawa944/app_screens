import 'package:app_screens/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/sized_widget.dart';

class OrdersScreen extends StatelessWidget {
  static String id = '/OrdersScreen';
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: const Color(0xff5F287C),
            width: double.infinity,
            child:  Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.search,color: Colors.white,size: 30,),
                  smallSpacerWidth,
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('الطلبيات',style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                      Row(
                        children: [
                          Text('تم التحميل',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffE8C172)
                          ),
                          ),
                          Icon(Icons.arrow_drop_down,color: Color(0xffE8C172),)
                        ],
                      )
                    ],
                  ),
                  smallSpacerWidth,
                   IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                    },
                     icon: const Icon(Icons.notification_add_rounded,color: Colors.white,size: 30,),)
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 5,
            child: ListView.separated(
                itemBuilder: (context, index)=> Padding(
                  padding: const EdgeInsets.only(left: 14.0,right: 14.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xffFCF7FB)
                    ),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.grey[200],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      const Column(
                                        children: [
                                          Text('حسين جمال الاستاذ',style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff5F287C),
                                          ),),
                                          Text('HEB-002128110-123',style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                          ),)
                                        ],
                                      ),
                                      const Spacer(),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 45.h,
                                            width: 90.w,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.green
                                            ),
                                          ),
                                          Container(
                                            height: 41.h,
                                            width: 82.w,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color:Colors.white
                                            ),
                                            child: const Icon(Icons.location_on,color: Colors.green,size: 27,),
                                          )
                                        ],
                                      ),
                                      smallSpacerWidth,
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 45.h,
                                            width: 90.w,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.green
                                            ),
                                          ),
                                          Container(
                                            height: 41.h,
                                            width: 82.w,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color:Colors.white
                                            ),
                                            child: const Icon(Icons.qr_code_2_outlined,color: Colors.green,size: 27,),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1.h,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                smallSpacerHeight,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.location_city_rounded,color: Color(0xff5F287C),size: 25,),
                                        smallSpacerWidth,
                                        const Text('الخليل / دوار المنارة',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff5F287C),
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.phone,color: Color(0xff5F287C),size: 25,),
                                        smallSpacerWidth,
                                        const Text('0599 567 567 124',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff5F287C),
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                                smallSpacerHeight,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xffCAF7FD),
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 4),
                                          child: Text('السماح بالقياس',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color:Color(0xff87DBDB)
                                          ),),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFFF5D5),
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 4),
                                          child: Text('المستخدم أجنبي',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color:Color(0xffE2CF83)
                                          ),),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xffECE2ED),
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 4),
                                        child: Center(
                                          child: Text('قابل للإرجاع',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color:Color(0xff51375E)
                                          ),),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (context, index)=> smallSpacerHeight,
                itemCount: 5)
        )
      ],
    );
  }
}
