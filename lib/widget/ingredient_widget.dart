import 'package:flutter/material.dart';


class Ingredient_items extends StatelessWidget {
  const Ingredient_items(
      {Key? key,
      required this.toolcolors,
      required this.img,
      required this.press})
      : super(key: key);
  final Color toolcolors;
  final String img;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          press();
        },
        child: Container(
          // padding: EdgeInsets.all(defaultPadding * 0.75),.withOpacity(0.1)
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: toolcolors.withOpacity(.3),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Image.asset(img,height: 25,width: 25,)
          ),
        ),
      ),
    );
  }
}

Widget items( double number,String img){

  return Container(
          margin: EdgeInsets.only(right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: number / 60 * 5.2,
                child: Image.asset(img,width: 65,height: 65,)
              ),
            ],
          ),
        );
}
