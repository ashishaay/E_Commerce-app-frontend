import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/product_details.dart';

class Rproducts extends StatefulWidget {
  const Rproducts({Key? key}) : super(key: key);



  @override
  _RproductsState createState() => _RproductsState();
}

class _RproductsState extends State<Rproducts> {

  var product_list = [
    {"name" : "Green Drop",
      "picture" : "assets/products/Green Drop Rs.600.png",
      "old_price" : 800,
      "price" : 600
    },
    {"name" : "NPK Sulphur Enriched",
      "picture" : "assets/products/N . p . k Sulphur Enriched 92.kg.png",
      "old_price" : 120,
      "price" : 92
    },
    {"name" : "Nature Plus bio farm",
      "picture" : "assets/products/Nature Plus bio farm 55.kg.png",
      "old_price" : 70,
      "price" : 55
    },
    {"name" : "Neem Khali",
      "picture" : "assets/products/Neem Khali 1kg Rs.62.png",
      "old_price" : 70,
      "price" : 62
    },
    {"name" : "Organic Manure",
      "picture" : "assets/products/organic manure 1kg 195.png",
      "old_price" : 250,
      "price" : 195
    },
    {"name" : "Plant Nutrient",
      "picture" : "assets/products/Plant Nutrient Rs.195.png",
      "old_price" : 220,
      "price" : 195
    },


    {"name" : "Ready to Pot",
      "picture" : "assets/products/Ready to pot Rs.50 1kg.png",
      "old_price" : 60,
      "price" : 50
    },
    {"name" : "Neem coated Urea",
      "picture" : "assets/products/Urea Neem Coated Rs.130 1kg.png",
      "old_price" : 150,
      "price" : 130
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
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>product_details(
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

