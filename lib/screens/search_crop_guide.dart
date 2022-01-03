import 'package:flutter/material.dart';

class search_crp_gud extends StatefulWidget {
  const search_crp_gud({Key? key}) : super(key: key);

  @override
  _search_crp_gudState createState() => _search_crp_gudState();
}

class _search_crp_gudState extends State<search_crp_gud> {
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
