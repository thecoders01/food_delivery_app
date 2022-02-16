import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';


class StandartButton extends StatelessWidget {
  final Color backcolor;
  final Color textcolor;
  final String textButton;
  final Function function;
  StandartButton(
      {required this.backcolor,
      required this.textcolor,
      required this.textButton,
      required this.function});
  @override
  Widget build(BuildContext context) {
  
    return BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
      onPressed: () {
        function();
      },
      child: Container(
        height: 60,
        width: 190,
        decoration: BoxDecoration(
            color: backcolor,
            borderRadius: BorderRadius.circular(20),
           
            boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 40,
                            offset: Offset(0, 40),
                          ),
                        ],
            
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textButton,
              style: TextStyle(color: textcolor,fontWeight: FontWeight.bold,fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
