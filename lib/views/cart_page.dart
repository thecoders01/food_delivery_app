import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widget/primary_button.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({ Key? key }) : super(key: key);

  @override
  _Cart_PageState createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(children: [
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
                      child: Icon(Iconsax.arrow_left,color: Colors.white,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Iconsax.close_square,color: Colors.white,),
                  ),
                ],
              ),
            ),
          ],),

        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height/1.18,
            width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                          
           color: Colors.grey[50],
                          borderRadius: BorderRadius.only(topRight: Radius.circular(35),topLeft: Radius.circular(35)),
                         
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              cart_widget("assets/pizza.png","Melting hot pizza"),
                               cart_widget("assets/spaghetti.png","Melting hot pizza"),
                              promo_widget(),
                              subtotal(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: PrimaryButton(buttonText: "CHECKOUT",color: Colors.yellowAccent.shade700,),
                              )
                            ],
                          ),
                        ),
           
          ),
        ),
      ],)
      ,
    );
  }

  Widget cart_widget(String image ,String name){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       
        width: MediaQuery.of(context).size.width-10,
            height: 160,
                         
                          decoration: BoxDecoration(
                         color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                           
                          ),
        child: Row(children: [
          Expanded(child: Container(
            
              decoration: BoxDecoration(
                         
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                         
                        ),
                        child: Center(child: Image.asset(image,width: 110,height: 110,)),
          )),
         
          Expanded(
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                         
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                         
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
Text(name,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
SizedBox(height: 20,),
                    Text("€6.90",style: TextStyle(fontSize: 14,color: Colors.black),),       
                             
                              ],
                            ),
                            increment()
                          ],),
                        ),
           
          )),
        ],),
      ),
    );
  }

  Widget increment(){
    return Column(
mainAxisAlignment: MainAxisAlignment.center,
  children: [
      Row(children: [
        control_button("-"),
        SizedBox(width: 15,),
        Text("02"),
        SizedBox(width: 15,),
         control_button("+")
      ],),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
      Text("€12.50", style: const TextStyle(color: Colors.grey,fontSize: 12 , fontWeight: FontWeight.bold)),
  
      ],)
  ],
);
  }
   control_button(String param){
     return Container( width: 25,
          height: 25,
                   
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
 BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(param,style: TextStyle(color: Colors.white,fontSize: 15),),
                        ),
                        );
   }

   Widget promo_widget(){
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(width: MediaQuery.of(context).size.width-10,
              height: 80,
                           
                            decoration: BoxDecoration(
                           color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                             
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                
                                children: [
                                Row(
                                  children: [
                                    Icon(Iconsax.ticket,color: Colors.grey,size: 29,),
                                    SizedBox(width: 15,),
                                    Text("Promo code",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                  ],
                                ),
                                BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
      onPressed: () {
         //Get.to(foodView());
      },
  child:   Container(
    height: 47,
    width: 100,
     decoration: BoxDecoration(
                        color: Colors.yellowAccent.shade700,
                        borderRadius: BorderRadius.circular(30),
                       
                      ),
    child: Center(child: Text("Apply",style: TextStyle(color: Colors.white,fontSize: 18,),),),),
)
                              ],),
                            ),
                            
                            ),
     );
   }

   Widget subtotal(){
     return Container(
       width: MediaQuery.of(context).size.width-10,
              height: 175,
                           
                            decoration: BoxDecoration(
                           color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                             
                            ),

                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text("Subtotal",style: TextStyle(fontSize: 17),),
                                    Text("€60.50",style: TextStyle(fontSize: 17),),
                                  ],),
                                ),
                                Padding(
                                 padding: const EdgeInsets.only(left: 13.0,right: 13.0,top: 8.0,bottom: 8.0),
                                  child: DottedLine(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text("Delivery",style: TextStyle(fontSize: 17),),
                                    Text("€2.50",style: TextStyle(fontSize: 17),),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0,right: 13.0,top: 8.0,bottom: 8.0),
                                  child: DottedLine(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text("Total",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                    Text("€ 64.50",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                  ],),
                                ),
                              ],
                            ),
     );
   }
} 