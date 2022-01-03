import 'package:flutter/material.dart';

class search_suppl extends StatefulWidget {
  const search_suppl({Key? key}) : super(key: key);

  @override
  _search_supplState createState() => _search_supplState();
}

class _search_supplState extends State<search_suppl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Search Supplements here'
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
