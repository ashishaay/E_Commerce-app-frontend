import 'package:flutter/material.dart';
import 'package:e_commerce/screens/Home.dart';
import 'package:e_commerce/screens/home_of_crop_sale.dart';
import 'package:e_commerce/screens/home_of_crop_guide.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/welcome_final_1.png"),
    fit: BoxFit.cover,
    ),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Agri-On",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(142, 200, 100, 200),
          child: Container(
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child : Container(
                    height: 35,
                    width: 125,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "Supplements",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage_2()),
                      );
                    },
                    child : Container(
                      height: 35,
                      width: 125,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                            "Sell Crops",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage_3()),
                      );
                    },
                    child : Container(
                      height: 35,
                      width: 125,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                            "Crop Guide",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
