import 'package:final_app/components/button.dart';
import 'package:final_app/models/Countries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class details extends StatefulWidget{
  final Countries food;
  const details({super.key , required this.food});
  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,


      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child:ListView(children: [
            //img
            Image.asset(widget.food.imgpth,height: 200,),
            const SizedBox(height: 25,),
            Row(
              children: [
                Icon(Icons.star , color: Colors.yellow[800] ,),
                SizedBox(height: 10,),
                Text(widget.food.rating ,),

              ],
            ),
            const SizedBox(height: 10,),

            Text(widget.food.name,style: GoogleFonts.dmSerifDisplay(fontWeight: FontWeight.bold,fontSize: 28),),
            const SizedBox(height: 10,),
            Text(widget.food.foodname,style: GoogleFonts.dmSerifDisplay(fontSize: 20,),),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(widget.food.des,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14,
                height: 2
              ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 105, 89, 88),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                      child: ElevatedButton(onPressed: (){}, child: Text("Add to cart"))),
                ],
              ),
            )

            //foodname
          ],) ),

        ],
      ),
    );
  }
}
