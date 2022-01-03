import 'package:flutter/material.dart';
import 'package:e_commerce/screens/Home.dart';
import 'package:e_commerce/components/cart_products.dart';


class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          child: Text(
            'Agri_On',
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


        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Sub-Total : ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                subtitle: Text("Rs. "+"${230}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),),
              ),
            ),
            MaterialButton(
              onPressed: (){},
            color: Colors.green,
              child: Text("Buy",
              style : TextStyle(
                color: Colors.white,
              )),
            )
          ],
        ),
      ),
    );
  }
}
