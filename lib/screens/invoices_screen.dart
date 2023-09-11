import 'package:app_screens/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/sized_widget.dart';

class InvoicesScreen extends StatelessWidget {
  static String id = '/InvoicesScreen';
  const InvoicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Color(0xff5F287C),
            width: double.infinity,
            child:  Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.search,color: Colors.white,size: 30,),
                  smallSpacerWidth,
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('الفواتير',style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                      Row(
                        children: [
                          Text('جميع الفواتير',style: TextStyle(
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
                  const Icon(Icons.notification_add_sharp,color: Colors.white,size: 30,),
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
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: CupertinoColors.systemGrey5,
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.library_books,size: 21,color: primaryColor),
                                  smallSpacerWidth,
                                  Text('2144186121-231',style: TextStyle(
                                      fontSize: 17,
                                      color: primaryColor,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              mediumSpacerheight,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.account_circle_rounded,size: 21,color: primaryColor),
                                      smallSpacerWidth,
                                      const Text('حسين جمال الاستاذ',style: TextStyle(
                                          fontSize: 18,
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.save_alt,size: 21,color: Colors.greenAccent),
                                      smallSpacerWidth,
                                      const Text('تحميل الصورة',style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 70.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(15),
                          ),
                          color: Colors.lightBlueAccent
                        ),
                        child: Center(
                            child: Text('عالق',style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),)
                        ),
                      )
                    ],
                  )
                ),
                separatorBuilder: (context, index)=> mediumSpacerheight,
                itemCount: 4)
        )
      ],
    );
  }
}
