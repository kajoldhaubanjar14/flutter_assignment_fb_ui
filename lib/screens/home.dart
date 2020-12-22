import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, String> post1 = {
    'name': 'Mickey Mouse Uploaded a Photo With Linux',
    'description':
        "Day saw created his made behold subdue thing day for Evening place itself called, fill. Brought for tree image gathering years without herb lights she'd creature upon man behold.",
    'photo': '1.jpg',
    'like': '102k',
    'comment': '49k',
    'share': '8k',
    'icon': '3.png',
  };

  Map<String, String> post2 = {
    'name': 'Shon Updated his Cover Photo',
    'description':
        "Heaven earth seed image light herb saying two male creeping land wherein seas void lights beast all in there. Together fourth whales, gathering without dry meat rule multiply upon so. Evening days, dry kind cattle i, lights two abundantly for.",
    'photo': '2.png',
    'like': '12k',
    'comment': '980',
    'share': '400',
    'icon': '1.jpg',
  };

  Map<String, String> post3 = {
    'name': 'Mario Uploaded His Profile Photo',
    'description':
        "Cattle first in you're. Two void without unto grass moveth god green him he meat fifth set darkness moveth And seed fifth dominion unto signs. Lights and creature one. Don't seas.",
    'photo': '3.png',
    'like': '23k',
    'comment': '1.2k',
    'share': '809',
    'icon': '2.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appbar(), body: _body(context));
  }

  Widget _appbar() {
    return AppBar(
      title: Text("Facebook UI"),
    );
  }

  Widget _body(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 5,
        ),
        _card(context, post1),
        _card(context, post2),
        _card(context, post3),
      ],
    );
  }

  Widget _card(BuildContext context, Map maps) {
    return GestureDetector(
        onTap: () =>
            Navigator.pushNamed(context, '/detailedPage', arguments: maps),
        child: Card(margin: EdgeInsets.all(10), child: _container(maps)));
  }

  Widget _container(Map maps) {
    return Column(
      children: [
        _headerRow(maps),
        SizedBox(
          height: 20,
        ),
        Text(maps['description']),
        Image(
          image: AssetImage('./images/' + maps['photo']),
        ),
        _counts(maps),
        SizedBox(
          height: .5,
          width: 375,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.grey),
          ),
        ),
        _footer(),
      ],
    );
  }

  Widget _headerRow(Map maps) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMM d').format(now);
    return Row(
      children: [
        Container(
          height: 50,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: Image(
            image: AssetImage('./images/' + maps['icon']),
            height: 40,
            width: 40,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              maps['name'],
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(formattedDate)
          ],
        ),
      ],
    );
  }

  Widget _counts(Map maps) {
    return Row(
      children: [
        Icon(
          Icons.thumb_up_alt_rounded,
          size: 15,
          color: Colors.blue,
        ),
        Icon(
          Icons.favorite,
          color: Colors.red,
          size: 15,
        ),
        Text(maps['like']),
        SizedBox(
          width: 140,
        ),
        Text(maps['comment'] + " Comments  " + maps['share'] + " Shares"),
      ],
    );
  }

  Widget _footer() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            Icons.thumb_up,
            size: 30,
            color: Colors.blue,
          ),
          Text("Like"),
          SizedBox(width: 60),
          Icon(
            Icons.messenger,
            size: 30,
            color: Colors.green,
          ),
          Text("Comment"),
          SizedBox(
            width: 60,
          ),
          Icon(
            Icons.forward_to_inbox,
            size: 30,
            color: Colors.red,
          ),
          Text("Share"),
        ],
      ),
    );
  }
}
