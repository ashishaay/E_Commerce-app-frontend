import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/screens/crop_prod_details.dart';

class Rproducts_sale extends StatefulWidget {
  const Rproducts_sale({Key? key}) : super(key: key);



  @override
  _Rproducts_saleState createState() => _Rproducts_saleState();
}

class _Rproducts_saleState extends State<Rproducts_sale> {

  var product_list = [
    {"name" : "Moong",
      "picture" : "assets/products/ashish 1 moong.png",
      "old_price" : 60,
      "price" : 54
    },
    {"name" : "Soyabean",
      "picture" : "assets/products/ashish 2 soyabean.png",
      "old_price" : 70,
      "price" : 65
    },
    {"name" : "Tur",
      "picture" : "assets/products/ashish 3 tur .png",
      "old_price" : 320,
      "price" : 300
    },
    {"name" : "Potato",
      "picture" : "assets/products/ashish 4 potato.png",
      "old_price" : 44,
      "price" : 40
    },
    {"name" : "Bajra",
      "picture" : "assets/products/ashish 5 bajra .png",
      "old_price" : 35,
      "price" : 30
    },
    {"name" : "Rice",
      "picture" : "assets/products/ashish 6 rice.png",
      "old_price" : 520,
      "price" : 496
    },


    {"name" : "Wheat",
      "picture" : "assets/products/ashish 7 wheat.png",
      "old_price" : 32,
      "price" : 29
    },
    {"name" : "Tobacco",
      "picture" : "assets/products/ashish 8 tobacco.png",
      "old_price" : 160,
      "price" : 154
    },


    {"name" : "Pea",
      "picture" : "assets/products/ashish 9 pea.png",
      "old_price" : 100,
      "price" : 90
    },
    {"name" : "Ground Nut",
      "picture" : "assets/products/ashish 10 groundnut.png",
      "old_price" : 100,
      "price" : 93
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return single_prod(
            prod_name: product_list[index]["name"],
            prod_picture: product_list[index]["picture"],
            prod_oldPrice: product_list[index]["old_price"],
            prod_price: product_list[index]["price"],);
        });
  }
}

class single_prod extends StatelessWidget {

  final prod_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_price;

  single_prod({
    required this.prod_name,
    required this.prod_picture,
    required this.prod_oldPrice,
    required this.prod_price,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>crp_product_details(
              product_details_name: prod_name,
              product_details_price: prod_price,
              product_details_oldPrice: prod_oldPrice,
              product_details_picture: prod_picture,
            ),),),
            child: GridTile(
              footer: Container(
                  color: Colors.white70,
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          prod_name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ),
                      Text(
                        "Rs. " + "${prod_price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      )
                    ],
                  )
              ),
              child: Image.asset(prod_picture,
                fit: BoxFit.cover,),
            ),
          ),
        ),
      ),

    );
  }
}

