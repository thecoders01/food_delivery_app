import 'package:flutter/material.dart';
import 'package:food_app/widget/Standard_button.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

// ignore: camel_case_types
class Burger_page extends StatefulWidget {
  const Burger_page({ Key? key }) : super(key: key);

  @override
  _Burger_pageState createState() => _Burger_pageState();
}

// ignore: camel_case_types
class _Burger_pageState extends State<Burger_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        const    SizedBox(height: 40,),
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
                      child:const Icon(Iconsax.arrow_left)),
                  ),
               const   Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Icon(Iconsax.heart),
                  )
                ],
              ),
            ),
             Container(
               
                              height: MediaQuery.of(context).size.height/2,
                                decoration: const BoxDecoration(
                       
                  
                          image: DecorationImage(
              image: AssetImage("assets/burger_eclate.png"),
              fit: BoxFit.cover,
            ),
                   
                        ),
                          
                              ),
                              burgername(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("Hot beef burger", style:     TextStyle(color: Colors.grey[400], fontSize: 17, fontWeight: FontWeight.bold)),
),
                                ],
                              ),

                              SizedBox(
                                height: 26,
                              ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text(
    '''
Looded Summer weg Burgerwith Fried Egg Naturally 
Packed summer weg burger featuring on easy grilled
pepper and onion relish, grilled zuchini
   ''', style:     TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold)),
),
                                ],
                              ),
                              SizedBox(height: 15,),
                              control_widget()
          ],
        ),
      ),
    );
  }
  burgername(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("Patty Buns Burgers", style:     TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(children: [
    Text('€',style: const TextStyle(color: Colors.yellowAccent,fontSize: 19,fontWeight: FontWeight.bold), ), 
    SizedBox(width: 5,),
    Text("6.50", style: const TextStyle(color: Colors.black,fontSize: 19 , fontWeight: FontWeight.bold)),
  ],),
),

    ],);
  }
  control_widget(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
Column(

  children: [
      Row(children: [
        control_button("-"),
        SizedBox(width: 15,),
        Text("2"),
        SizedBox(width: 15,),
         control_button("+")
      ],),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('€',style: const TextStyle(color: Colors.red,fontSize: 9,fontWeight: FontWeight.bold), ), 
      SizedBox(width: 5,),
      Text("12.50", style: const TextStyle(color: Colors.black,fontSize: 9 , fontWeight: FontWeight.bold)),
  
      ],)
  ],
),
        StandartButton(backcolor: Colors.black, textcolor: Colors.white, textButton: "ADD TO CART",
                 function: (){
                   print("onPressed");
                  // Get.to(Homepage());
                   }),
      ],),
    );
  }
  control_button(String param){
     return Container( width: 35,
          height: 35,
                   
                        decoration: BoxDecoration(
                          color: Colors.yellow[600],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
 BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(param,style: TextStyle(color: Colors.white,fontSize: 25),),
                        ),
                        );
   }
}