import 'package:final_app/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatelessWidget{
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 89, 88),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("Food Recepies",
                style: GoogleFonts.ultra(
                  fontSize: 30,
                  color: Colors.lightBlueAccent
                ) ,
              ),
            ),
            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/assets/images/recipe-book.png'),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Welcome to Food Recepies",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 40,
                    color: Colors.white
                ),

              ),
            ),
            SizedBox(height: 10,),

            Align(
              alignment: Alignment.center,
              child: Text(" Start Exploring",
              style: GoogleFonts.dmSerifDisplay(
                fontSize:30,
                color: Colors.grey,
  ),
              ),
            ),
            SizedBox(height: 25,),
          MyButton(text: "Start",
            onTap: (){
            //navigate to main page
              Navigator.pushNamed(context, '/Menupage');
            },
          )

          ],
        ),
      ),
    );
  }
}