import 'package:align_positioned/align_positioned.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants/style.dart';
import 'package:food_app/views/home_page.dart';
import 'package:food_app/widget/Standard_button.dart';
import 'package:food_app/widget/ingredient_widget.dart';
import 'package:get/get.dart';

class Firstpage extends StatefulWidget {

  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() =>  _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

   final List<dynamic> _ingredient = [
     {
      'name': 'burger',
      'img': 'assets/bgc_categorie.png',
    },
    {
      'name': 'pizza',
      'img': 'assets/pizza_categorie.png',
    },
    {
      'name': 'hotdog',
      'img': 'assets/hotdog_categorie.png',
    },
    {
      'name': 'tomato',
      'img': 'assets/tomatoes.png',
    },
   
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
       
        child: SingleChildScrollView(
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 90,),
               FadeInUp(
                duration: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    
                    height: 400,
                    padding: const EdgeInsets.all(90.0),
                    
                    decoration: const BoxDecoration(
                      
                   
                     image: DecorationImage(
              image: AssetImage("assets/driver.png"),
              fit: BoxFit.cover,
            ),
                    ),
                    child: Stack(
                      children: [
                       
                        for (double i = 0; i < 240; i += 60)
                          AnimChain(
                            //i.toInt()
                            initialDelay: Duration(milliseconds:i.toInt() )
                          )
                          .next(
                            wait: const Duration(milliseconds: 0),
                            widget: AnimatedAlignPositioned(
                              dx: -150,
                              dy: 0,
                              duration: const Duration(seconds: 1),
                              rotateDegrees: 0,
                              touch: Touch.outside,
                              child: Ingredient(0, i),
                            ),
                          )
                          .next(
                            wait: const Duration(seconds: 2),
                            widget: AnimatedAlignPositioned(
                             
                              dx: -150,
                              dy:i / 240 ,
                              duration: const Duration(seconds: 1),
                              rotateDegrees: i,
                              touch: Touch.outside,
                              child: Ingredient(0, i),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            const  SizedBox(height: 10,),
             
                 FadeInRight(
              duration:const Duration(milliseconds: 500),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("Quick delivery at", style: titleText),
                            Text("Your Doorstep", style: titleText),
                        ],
                      ),
                    ],
                  ),
                ),
              
             const   SizedBox(
                  height: 32,
                ),
                  FadeInLeft(
              duration:const Duration(milliseconds: 550),
                   child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                     children: [
                       Column(
                         children: [
                           Text("Home delivery and online reservation",
                              style: TextStyle(color: Colors.grey[600], fontSize: 15,fontWeight: FontWeight.bold)),
                          Text("system for restaurant and cafe",
                          style: TextStyle(color: Colors.grey[600], fontSize: 15,fontWeight: FontWeight.bold)),
                          
                         
                         ],
                       ),
                     ],
                   ),
                 ),
                   const SizedBox(
                  height: 52,
                ),
                FadeInUp(
              duration: const Duration(milliseconds: 620),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.green.shade100,
                        
                      ),
                      SizedBox(width: 10,),
                       CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.green.shade100,
                        
                      ),
                       const SizedBox(width: 10,),
                       const CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.yellow,
                        
                      ),
                      ],),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
         FadeInUp(
              duration: Duration(milliseconds: 650),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StandartButton(backcolor: Colors.black, textcolor: Colors.white, textButton: "Get Started",
               function: (){
                 print("onPressed");
                 Get.to(Homepage());
                 }),
            ],
          ),
        ),
        const SizedBox(
                  height: 30,
                ),
          ],),
        ),
      ),
    );
  }
  // generate the items rotation
    // ignore: non_constant_identifier_names
    Ingredient(int index, double number) {
       index = number ~/ 60;
      
    return FadeInRight( 
      delay: const Duration(seconds: 1),
      duration: Duration(milliseconds: (index * 100) + 500),
      child: items(number, _ingredient[index]['img']),
      );
    }
}