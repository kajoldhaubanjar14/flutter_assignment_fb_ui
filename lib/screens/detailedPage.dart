import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context).settings.arguments;
    print(arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: _body(arguments),
    );
  }

  Widget _body(Map maps) {
    return Card(
      child: ListView(
        children: [
          Text(
            maps['name'],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(maps['description']),
          SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage('./images/' + maps['photo']),
          ),
        ],
      ),
    );
  }
}
