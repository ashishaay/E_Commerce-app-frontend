import 'package:flutter/material.dart';

class search_crp_sal extends StatefulWidget {
  const search_crp_sal({Key? key}) : super(key: key);

  @override
  _search_crp_salState createState() => _search_crp_salState();
}

class _search_crp_salState extends State<search_crp_sal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter the crop here'
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),

        ],
      ),
    );
  }
}
