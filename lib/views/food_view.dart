import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:food_app/controller/controller.dart';
import 'package:food_app/views/cart_page.dart';
import 'package:food_app/widget/Standard_button.dart';
import 'package:food_app/widget/ingredient_widget.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class foodView extends StatefulWidget {
   final String name,subname,img;
   final int select;
  const foodView({ Key? key ,required this.name,
  required this.select,
      required this.subname,
        required this.img,}) : super(key: key);

  @override
  _foodViewState createState() => _foodViewState(name:name,subname:subname,img:img,select:select );
}

class _foodViewState extends State<foodView> {
    final String name,subname,img;
     final int select;
     _foodViewState({required this.name,
      required this.select,
      required this.subname,
        required this.img,}) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(Iconsax.arrow_left)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Iconsax.heart),
                  )
                ],
              ),
            ),

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
                             SizedBox(height: 30,),
                             
            ( select!= 1) ?           Hero(
                              tag:'image_${select}',
                              child: Center(child: Image.asset(img,width: 290,height: 290,)),
                            )   :  Hero(
                              tag:'image_${select}',
                               child: Container(
                                height: 290,
                                  decoration: BoxDecoration(
                                                        boxShadow: [
   BoxShadow(
                                color: Colors.yellow.shade200,
                                blurRadius: 10,
                                offset: Offset(0, 10),
                              )
                                                      ],
                                       
                                                      shape: BoxShape.circle,
                                                      border: Border.all(color: Colors.grey.shade200, width: 1.0),
                                                
                                                     ),
                                child: Center(child: Image.asset(img,width: 290,height: 290,))
                                ),
                             ),

                             SizedBox(height: 20,),
 Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('€',style: const TextStyle(color: Colors.red,fontSize: 29,fontWeight: FontWeight.bold), ), 
      SizedBox(width: 5,),
      Text("9.65", style: const TextStyle(color: Colors.black,fontSize: 29 , fontWeight: FontWeight.bold)),
  
      ],),
      SizedBox(height: 30,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        control_button("S"),
        SizedBox(width: 10,),
        control_button("M"),
         SizedBox(width: 10,),
        control_button("L"),
      ],),
      SizedBox(height: 30,),
 Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
      Text("Ingredients", style: const TextStyle(color: Colors.black,fontSize: 19 , fontWeight: FontWeight.bold)),
  
      ],),
SizedBox(height: 20,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Ingredient_items(toolcolors: Colors.yellow, img: 'assets/garlic.png', press: (){}),
Ingredient_items(toolcolors: Colors.red, img: 'assets/meat.png', press: (){}),
Ingredient_items(toolcolors: Colors.green, img: 'assets/pepper.png', press: (){}),
Ingredient_items(toolcolors: Colors.orange, img: 'assets/tomatoes.png', press: (){}),
],),
SizedBox(height: 20,),
 StandartButton(backcolor: Colors.black, textcolor: Colors.white, textButton: "ADD TO CART",
                 function: (){
                    Get.to(Cart_Page());
                   print("add to cart");
                  // Get.to(Homepage());
                   }),
          ],
        ),
      ),
    );
  }

  control_button(String param){
     return Obx(
                      () =>BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
      onPressed: () {
         manageController.selectedSize.value= param;
      },
       child: Container( width: 35,
            height: 35,
                     
                          decoration: BoxDecoration(
                            color:( manageController.selectedSize.value== param) ? Colors.yellow[600]:Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
        ( manageController.selectedSize.value== param) ?  BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                blurRadius: 10,
                                offset: Offset(0, 10),
                              ):BoxShadow(
                                
                                )
                            ],
                          ),
                          child: Center(
                            child: Text(param,style: TextStyle(color: ( manageController.selectedSize.value== param) ? Colors.white:Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                          ),
     ));
   }
} 