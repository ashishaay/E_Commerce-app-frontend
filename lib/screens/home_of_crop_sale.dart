
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce/screens/cart.dart';

//my imports bro
import 'package:e_commerce/components/HorizonalListView.dart';
import 'package:e_commerce/screens/welcome_page.dart';
import 'package:e_commerce/screens/search_cropsforsale.dart';
import 'package:e_commerce/components/Rproducts_sale.dart';

class HomePage_2 extends StatefulWidget {
  const HomePage_2({Key? key}) : super(key: key);

  @override
  _HomePage_2State createState() => _HomePage_2State();
}

Widget image_carousel = Container(
  height: 200,
  child: Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('assets/wheat.png'),
      AssetImage('assets/random_crop.png'),
      AssetImage('assets/maize.png'),
      AssetImage('assets/harvester.png'),
    ],
    autoplay: false,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 100),
    dotSize: 4.0,
    indicatorBgPadding: 2.0,
    dotBgColor: Colors.transparent,
  ),
);

class _HomePage_2State extends State<HomePage_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Crop Market',
            style: TextStyle(
              color: Colors.white,
            ),
          ),


          backgroundColor: Colors.green,
          actions: <Widget>[
            IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => search_crp_sal()),
                );
              },
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
            ),
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            )
          ],
        ),
        drawer: Drawer(

          child: ListView(
            children: <Widget> [
              UserAccountsDrawerHeader(
                accountName: Text('Ashish'),
                accountEmail: Text('udainiyaashish@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>welcome()));
                },
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(
                    Icons.home,

                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_bag),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.category),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite),
                ),
              ),
              SizedBox(height: 16,),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.badge_outlined, color: Colors.blue[900]),
                ),
              ),

            ],
          ),
        ),
        body : ListView(
          children: <Widget>[
            image_carousel,

            Padding(
                padding: EdgeInsets.all(21),
                child:Text('Recent Products')),
            Container(
              height: 446,
              child: Rproducts_sale(),
            )
          ],
        )

    );
  }
}
