import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_cart = [
    {"name" : "Rice",
      "picture" : "assets/products/ashish 6 rice.png",
      "price" : 496,

      "qty": 1
    },
    {"name" : "Green Drop",
      "picture" : "assets/products/Green Drop Rs.600.png",
      "price" : 600,

      "qty": 1
    },
    {"name" : "Wheat",
      "picture" : "assets/products/ashish 7 wheat.png",
      "price" : 27,

      "qty": 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder:(context, index){
          return single_cart_prod(
              cart_prod_name: products_on_cart[index]["name"],
              cart_prod_picture: products_on_cart[index]["picture"],
              cart_prod_price: products_on_cart[index]["price"],
              cart_prod_qty: products_on_cart[index]["qty"],
              );
        });
  }
}

class single_cart_prod extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;

  final cart_prod_price;

  final cart_prod_qty;

  single_cart_prod({

    required this.cart_prod_name,
    required this.cart_prod_picture,
    required this.cart_prod_price,
    required this.cart_prod_qty,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture, width: 80, height: 80,),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //This section is for size
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size : "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('${cart_prod_qty}'+'kg', style: TextStyle(color: Colors.red),),
                ),
                //This section is for color

              ],
            ),
            // this is for the price
            Container(
              alignment: Alignment.topLeft,
              child: Text("Rs."+"${cart_prod_price}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.red,
              ),),
            )
          ],
        ),


        // !!!!!!!!!!!!!!!!!!!!!!! need to add a quatity icon



      ),
    );
  }
}
