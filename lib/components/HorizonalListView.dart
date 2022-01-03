import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class horizontal_view extends StatelessWidget {
  const horizontal_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(image_location: 'assets/cats/tshirt.png', image_caption: 'T-shirt'),
          Category(image_location: 'assets/cats/accessories.png', image_caption: 'Accessories'),
          Category(image_location: 'assets/cats/dress.png', image_caption: 'Gowns'),
          Category(image_location: 'assets/cats/fromal.png', image_caption: 'Formals'),
          Category(image_location: 'assets/cats/informal.png', image_caption: 'Casuals'),
          Category(image_location: 'assets/cats/jeans.png', image_caption: 'Jeans'),
          Category(image_location: 'assets/cats/shoe.png', image_caption: 'Shoes'),

        ],
      ),
    );
  }
}


class Category extends StatelessWidget {


  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80,),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption)),

          ),
        ),
      ),
    );
  }
}
