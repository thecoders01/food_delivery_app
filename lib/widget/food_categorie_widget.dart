import 'package:flutter/material.dart';

class Food_categorie_widget extends StatelessWidget {

  final String description,img;
  final double heigth;
  Food_categorie_widget({required this.description,required this.img,required this.heigth});
  @override
  Widget build(BuildContext context) {
    return Container( 
      width: 160,
      height: heigth,
                    //margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                          SizedBox(width: 5,),
                        Image.asset(img,width: 45,height: 45,),
                        SizedBox(width: 15,),
                        Text(description,style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    
                    );
  }
}