import 'package:final_app/components/ContriesTile.dart';
import 'package:final_app/models/Countries.dart';

import 'package:final_app/components/food_list.dart';
import 'package:final_app/details.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details.dart';


class Menupage  extends StatefulWidget{
  const Menupage({super.key});
  @override
  State<Menupage> createState() => _MenupageState();

}
class _MenupageState extends State<Menupage>{



  //Food
  List cntfood = [
    //india
    Countries(name: 'Indian Dishes', imgpth: 'lib/assets/images/chapati.png',rating: "5.0",foodname: "Dosa",des:"For a quick and flavorful Indian Pulao, start by rinsing 1 cup of Basmati rice and soaking it for 30 minutes. In a pan, heat 2 tablespoons of ghee and sauté cumin seeds, whole spices (peppercorns, cloves, cardamom, cinnamon, bay leaf), sliced onions, and cashews until golden. Add ginger-garlic paste, mixed vegetables, green chilies, and chopped tomatoes. Drain the soaked rice and sauté it with the spices. Pour in 2 cups of water, add salt, and simmer until the rice is cooked. Once done, fluff the rice with a fork and mix in chopped coriander leaves, mint leaves, and raisins. Serve this aromatic and delightful Indian Pulao, garnished with extra coriander if desired. Enjoy!"),
    Countries(name: 'Italia Dishes', imgpth: 'lib/assets/images/pasta.png',rating: "4.6" , foodname: "Italian Cheese Pasta",des:"To prepare a delightful Italian cheese pasta, start by boiling your favorite pasta (like penne or fusilli) in salted water until al dente. In a separate pan, melt butter and sauté minced garlic until fragrant. Add heavy cream and bring it to a gentle simmer. Gradually stir in a generous amount of grated Parmesan and mozzarella cheese until the sauce becomes smooth and velvety. Season with salt, pepper, and a pinch of nutmeg for extra flavor. Toss the cooked pasta into the creamy cheese sauce, ensuring each strand is well-coated. For a finishing touch, sprinkle fresh basil or parsley on top and serve hot. This quick and indulgent Italian cheese pasta is bound to satisfy your cravings with its rich and comforting flavors"),
    Countries(name: 'Vegan Dishes', imgpth: 'lib/assets/images/vegan.png',rating: "4.5", foodname: "Butternut Squash Stuffed Shells",des:"To make Butternut Squash Stuffed Shells, roast butternut squash until tender, then blend it into a creamy puree. Combine the puree with ricotta, Parmesan, nutmeg, and seasonings. Stuff cooked jumbo pasta shells with this mixture. Place the stuffed shells in a baking dish, cover with marinara sauce, and sprinkle mozzarella on top. Bake until bubbly and golden. Garnish with fresh sage or basil for a delightful, autumn-inspired meal"),
    Countries(name: 'Spanish Dishes', imgpth: 'lib/assets/images/paella.png',rating: "4.1", foodname: "Paella",des:"To make it, start by sautéing onions, garlic, and bell peppers in olive oil. Add diced tomatoes, saffron, and paprika for flavor. Stir in short-grain rice and cook briefly. Pour in a combination of chicken broth and seafood stock, then arrange a variety of seafood such as shrimp, mussels, and clams on top. Simmer until the rice is cooked and the seafood is tender. Garnish with lemon wedges and fresh parsley before serving this delicious and vibrant Spanish paella!"),
    Countries(name: 'Mexican Dishes', imgpth: 'lib/assets/images/thanksgiving.png',rating: "3.9", foodname: "Chicken Enchiladas",des:" Start by cooking shredded chicken and mixing it with diced onions, green chilies, and shredded cheese. Fill tortillas with the chicken mixture, roll them up, and place them in a baking dish. In a saucepan, combine tomato sauce, enchilada sauce, and seasonings. Pour the sauce over the rolled tortillas, sprinkle with more cheese, and bake until bubbly and golden. Garnish with chopped cilantro and serve these flavorful chicken enchiladas with sour cream and guacamole for an authentic Mexican taste!"),

  ];




  void navigatetofoodlist(int index) {
    if (index >= 0 && index < cntfood.length) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => details(food: cntfood[index]),
        ),
      );
    }
  }






  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],

        ),


      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text("Please select the type u want",
            style: GoogleFonts.adamina(
              fontSize: 25,
              color: Colors.black
            )
            ),
          ),
          SizedBox(height: 10,),


          Expanded(


              child: Padding(
                padding: const EdgeInsets.all( 10.0),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: cntfood.length,
                    itemBuilder: (context, index) => ContriesTile(

                      name:cntfood[index],

                        onTap: ()=> navigatetofoodlist(index),


                )
                ),
              )),



        ],
      ),

    );
  }

}
