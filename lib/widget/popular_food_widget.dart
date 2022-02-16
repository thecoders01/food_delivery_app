import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:food_app/controller/controller.dart';
import 'package:food_app/views/food_view.dart';
import 'package:get/get.dart';


class popular_food_widget extends StatelessWidget {
 
 final String name,subname,price,img;
 final int selectedNumber;
  popular_food_widget(
      {required this.name,
      required this.subname,
        required this.img,
         required this.selectedNumber,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return Obx(
                      () => Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(

      onTap: () {
        manageController.selectedNumber.value= selectedNumber;
      },
        child: Container(
      width: 210,
          height: 280,
                   
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                  ( manageController.selectedNumber.value== selectedNumber) ?  BoxShadow(
                              color: Colors.yellow.withOpacity(0.2),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            ):BoxShadow(
                            
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
        Text(name, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                                 SizedBox(height: 6,),
                                  Text(subname, style: TextStyle(color: Colors.grey.shade400, fontSize: 13, )),
       
                                  ],),
                                ),
                              ],
                            ),
                            Hero(
                              tag:'image_${selectedNumber}',
                              child: Center(child: Image.asset(img,width: 110,height: 110,)),
                            ),
                              SizedBox(height: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0,left: 8.0),
                                    child: Text("🔥 44 Calories",style: TextStyle(color: Colors.yellow,fontSize: 14,fontWeight: FontWeight.bold),),
                                  ),
      Padding(
         padding: const EdgeInsets.only(left: 8.0,right: 8.0),
        child:   price_widget(price,name,subname,img,selectedNumber),
      )
                                ],
                              )
                          ],
                        ),
      
        ),
      ),
    ));
  }

  
}

Widget price_widget(String price,String name,String subname,String img,int select){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Row(children: [
  Text('€',style: const TextStyle(color: Colors.yellowAccent,fontSize: 19,fontWeight: FontWeight.bold), ), 
  SizedBox(width: 5,),
  Text(price, style: const TextStyle(color: Colors.black,fontSize: 19)),
],),
BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
      onPressed: () {
         Get.to(foodView(name: name,subname:subname,img:img,select:select));
      },
  child:   Container(
    height: 40,
    width: 50,
     decoration: BoxDecoration(
                        color: Colors.yellowAccent.shade700,
                        borderRadius: BorderRadius.circular(30),
                       
                      ),
    child: Center(child: Icon(Icons.add,color: Colors.white,),),),
)
      ],
    );
  }
 