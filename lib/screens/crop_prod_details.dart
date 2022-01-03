import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/components/Rproducts.dart';
import 'package:e_commerce/screens/Home.dart';
import 'package:e_commerce/screens/cart.dart';

class crp_product_details extends StatefulWidget {

  final product_details_price;
  final product_details_name;
  final product_details_oldPrice;
  final product_details_picture;

  crp_product_details({
    required this.product_details_name,
    required this.product_details_price,
    required this.product_details_oldPrice,
    required this.product_details_picture
  });

  @override
  _crp_product_detailsState createState() => _crp_product_detailsState();
}

class _crp_product_detailsState extends State<crp_product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Text(
              'Crop Market',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),

          centerTitle: true,
          backgroundColor: Colors.green,
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )
          ],
        ),

        body: ListView(
          children: <Widget>[
            Container(
              height: 300,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(
                      widget.product_details_picture,
                      fit: BoxFit.contain
                  ),
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(widget.product_details_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                      ),

                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child:Text('Rs. '
                                '${widget.product_details_oldPrice}',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                        Expanded(
                          child:Text('Rs. '
                              '${widget.product_details_price}',
                            style: TextStyle(
                                color : Colors.red,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Choose the Quantity"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "Close",
                                    style: TextStyle(
                                        color: Colors.blueAccent
                                    ),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    elevation: 0.2,
                    textColor: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Qty"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : <Widget>[
                Expanded(
                  child: MaterialButton(
                      onPressed: (){},
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: Text('Buy Now')
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                ),
              ],
            ),

            Divider(),
            ListTile(
              title: Text(
                  "Product Details"
              ),
              subtitle: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
              ),

            ),

            Divider(),
            Divider(),


            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child: Text("Product Name"),),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(widget.product_details_name),
                ),
              ],
            ),
            Divider(),
            //need to add the product brand to the instance field

            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child: Text("Product Brand"),),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Brand X"),
                ),
              ],
            ),
            Container(
              height: 360,
              child: similar_products(),
            )

          ],
        )
    );

  }
}

class similar_products extends StatefulWidget {
  const similar_products({Key? key}) : super(key: key);

  @override
  _similar_productsState createState() => _similar_productsState();
}

class _similar_productsState extends State<similar_products> {
  var product_list = [
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
          return similar_single_prod(
            prod_name: product_list[index]["name"],
            prod_picture: product_list[index]["picture"],
            prod_oldPrice: product_list[index]["old_price"],
            prod_price: product_list[index]["price"],);
        });
  }
}


class similar_single_prod extends StatelessWidget {

  final prod_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_price;

  similar_single_prod({
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
