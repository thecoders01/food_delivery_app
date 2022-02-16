import 'package:flutter/material.dart';
import 'package:food_app/constants/style.dart';
import 'package:food_app/views/burger_page.dart';
import 'package:food_app/widget/food_categorie_widget.dart';
import 'package:food_app/widget/popular_food_widget.dart';
import 'package:food_app/widget/top_of%20_the_week_widget.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40,),
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
                      child: const Icon(Iconsax.menu)),
                  ),
             const     Padding(
                    padding: EdgeInsets.all(8.0),
                    child:  Icon( Iconsax.search_normal),
                  )
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 12,top: 8,bottom: 8),
               child: Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("What would you", style: HomepagetitleText),
                              Text("like to eat", style: HomepagetitleText),
                          ],
                        ),
                      ],
                    ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Column(
                   children: [
                     GestureDetector(
                       onTap: (){
                          Get.to(Burger_page());
                       },
                       child: Food_categorie_widget(description: "Burger",heigth: 70.0,img: 'assets/bgc_categorie.png',)),
                          SizedBox(height: 10,),
                          Food_categorie_widget(description: "Subway",heigth: 70.0,img: 'assets/pizza_categorie.png')
                   ],
                 ),
                 Column(
                   children: [
                     Food_categorie_widget(description: "Bakery item",heigth: 70.0,img: 'assets/hotdog_categorie.png',),
                            SizedBox(height: 10,),
                        
                          Food_categorie_widget(description: "Fruit item",heigth: 70.0,img: 'assets/orange.png',)
                   ],
                 ),
               ],
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("Popular", style: popText),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("See all", style: TextStyle(color: Colors.grey,fontSize: 15)),
),

               ],),
             ),

             SingleChildScrollView(
               scrollDirection: Axis.horizontal,

               child: Row(
                 children: [
                   popular_food_widget(name: "Melting Cheese",subname: "Hot beef pizza",price: "9.65",img: 'assets/pizza.png',selectedNumber:1),
                     popular_food_widget(name: "Burger Orzo",subname: "Hot Shrimp Spicy",price: "9.65",img: 'assets/burger.png',selectedNumber:2),
                       popular_food_widget(name: "Pizza Cheese",subname: "Hot pepper pizza",price: "9.65",img: 'assets/pizza3.png',selectedNumber:3),
                 ],
               ),
             ),
               Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("Top of the week", style: topText),
),


               ],),
             ),
             Top_of_the_week_widget()
          ],
        ),
      ),
    );
  }
} 