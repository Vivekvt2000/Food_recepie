import 'package:final_app/models/Countries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContriesTile extends StatelessWidget{
  final Countries name;
  final void Function()? onTap;


  const ContriesTile( {
    super.key,
    required this.name,
    required this.onTap,

}) ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(20),


        ),
        margin: EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            //
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Image.asset( name.imgpth,
                height: 140,

              ),
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name.name,style: TextStyle(fontSize: 25) ,),
              ),
            ),
            Icon(Icons.arrow_forward , color: Colors.white),
          ],
        ),

      ),
    );
  }

}
