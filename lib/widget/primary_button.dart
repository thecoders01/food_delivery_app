import 'package:flutter/material.dart';
import 'package:food_app/constants/style.dart';


class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  PrimaryButton({required this.buttonText,required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), 
          color: color,
          
          
          ), 
      child: Text(
        buttonText,
        style: textButton.copyWith(color: kWhiteColor),
      ),
    );
  }
}
