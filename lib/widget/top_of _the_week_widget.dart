import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Top_of_the_week_widget extends StatelessWidget {
  const Top_of_the_week_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width-10,
          height: 160,
                       
                        decoration: BoxDecoration(
                       color: Colors.white30,
                          borderRadius: BorderRadius.circular(20),
                         
                        ),
                        child: Row(children: [
                          Expanded(
                            child: Container(
                                 decoration: BoxDecoration(
                         
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                         
                        ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Container(
                                  height: 210,
                                    decoration: BoxDecoration(
                                                       
                                            
                                                     shape: BoxShape.circle,
                                                     border: Border.all(color: Colors.grey.shade200, width: 1.0),
                                               
                                                    ),
                                  child: Center(child: Image.asset("assets/pizza.png",width: 210,height: 210,))
                                  ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              
                               decoration: BoxDecoration(
                         
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                         
                        ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 6,),
                                  Text("Beef Hot Steack", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                                     SizedBox(height: 6,),
                                      Text("Hot beef Steak with fry", style: TextStyle(color: Colors.grey.shade400, fontSize: 13, )),
                            SizedBox(height: 6,),
                                  Row(children:[
                                    Icon(Iconsax.clock,size: 15,),
                                    SizedBox(width: 5,),
                                    Text("24-40 min")
                                  ]),
                                   SizedBox(height: 16,),
                                  price_widgets("9.25")
                                ],),
                              ),
                            ),
                          )
                        ],),
      ),
    );
  }

Widget price_widgets(String price,){
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
}