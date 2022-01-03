import 'package:e_commerce/components/Rproducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce/screens/cart.dart';

//my imports bro
import 'package:e_commerce/components/HorizonalListView.dart';
import 'package:e_commerce/screens/welcome_page.dart';
import 'package:e_commerce/screens/search_crop_guide.dart';
import 'package:e_commerce/components/r_crops.dart';

class HomePage_3 extends StatefulWidget {
  const HomePage_3({Key? key}) : super(key: key);

  @override
  _HomePage_3State createState() => _HomePage_3State();
}

Widget image_carousel = Container(
  height: 200,
  child: Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('assets/crop_guide_ad_2.png'),
      AssetImage('assets/crop_guide_ad_3.png'),
      AssetImage('assets/crop_guide_ad_4.png'),
      AssetImage('assets/final_welcome.png'),
    ],
    autoplay: false,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 100),
    dotSize: 4.0,
    indicatorBgPadding: 2.0,
    dotBgColor: Colors.transparent,
  ),
);

class _HomePage_3State extends State<HomePage_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Crop Guide',
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
                  MaterialPageRoute(builder: (context) => search_crp_gud()),
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
                child:Text('Recent Crops')),
            Container(
              height: 445,
              child: r_crops(),
            )
          ],
        )

    );
  }
}
