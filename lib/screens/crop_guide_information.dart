import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/components/Rproducts.dart';
import 'package:e_commerce/screens/Home.dart';
import 'package:e_commerce/screens/cart.dart';
import 'package:e_commerce/screens/home_of_crop_guide.dart';
import 'package:google_fonts/google_fonts.dart';

class crop_info extends StatefulWidget {

  final estimated_price;
  final crop_name;

  final crp_details_picture;
  final crp_time_of_sowing;
  final crp_irrigation;
  final crp_fertilizers;

  crop_info({
    required this.crop_name,
    required this.estimated_price,

    required this.crp_details_picture,
    required this.crp_time_of_sowing,
    required this.crp_irrigation,
    required this.crp_fertilizers,
  });

  @override
  _crop_infoState createState() => _crop_infoState();
}

class _crop_infoState extends State<crop_info> {
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
              'Agri-On',
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
                      widget.crp_details_picture,
                      fit: BoxFit.contain
                  ),
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(widget.crop_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                      ),

                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Text('Rs. '
                              '${widget.estimated_price}'+'/hectare',
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
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Area"),
                              content: Text("Choose the area size"),
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
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: <Widget>[
                        Text("Area"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children : <Widget>[
                Expanded(

                  child: MaterialButton(
                      onPressed: (){},
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: Text('Register')
                  ),
                ),

                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                ),
              ],
            ),

            Divider(),
            Divider(),

            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child: Text("Crop Name"),),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(widget.crop_name),
                ),
              ],
            ),

            Divider(),
            ListTile(
              title: Text(
                  "Time of Sowing : ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text(widget.crp_time_of_sowing,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black
              ),)

            ),

            Divider(),
            ListTile(
              title: Text(
                  "Fertilizers : ",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
                subtitle: Text(widget.crp_fertilizers,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                  ),)

            ),
            Divider(),

            ListTile(
              title: Text(
                  "Irrigation : ",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
                subtitle: Text(widget.crp_irrigation,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                  ),)

            ),

          ],
        )
    );

  }
}


