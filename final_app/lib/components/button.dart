import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String text;
  final void Function()? onTap;

  const MyButton({super.key, required this.text, this.onTap });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 176, 132, 129),
          borderRadius: BorderRadius.circular(40),
        ),
        padding : EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
            text,
            style: TextStyle(color: Colors.white , fontSize: 26,
          ),
              ),
            SizedBox(width: 10,),
            Icon(Icons.arrow_forward , color: Colors.white),
          ]
        )
      ),
    );
  }

}
