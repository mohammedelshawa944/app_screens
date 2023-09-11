import 'package:app_screens/constant/colors.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static String id = '/NotificationScreen';
   const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text(
            'الإشعارات',style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: primaryColor,size: 25,))
        ]
      ),
      body:  Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index)=>Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Text('06/09/2023',style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),),
                          Spacer(),
                          Text('طلبية عالقة',style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 23
                          ),),
                        ],
                      ),
                      Text(
                        textDirection: TextDirection.rtl,
                        '06/09/2023',style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                    ],
                  ),
                ),
                separatorBuilder: (context, index)=>Container(
                  height: 1,
                  color: Colors.black,
                ),
                itemCount: 5),
          ),
        ],
      )
    );
  }
}
