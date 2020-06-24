import 'package:flutter/material.dart';

// Demonstration data
class TileItem {
  final String title;
  final String subTitle;
  final int number;

  TileItem({this.number, this.subTitle, this.title});
}

List<TileItem> items = [
  new TileItem(number: 1, subTitle: "Subtitle for item 1", title: "Title 1"),
  new TileItem(number: 2, subTitle: "Subtitle for item 2", title: "Title 2"),
  new TileItem(number: 3, subTitle: "Subtitle for item 3", title: "Title 3"),
  new TileItem(number: 4, subTitle: "Subtitle for item 4", title: "Title 4"),
  new TileItem(number: 5, subTitle: "Subtitle for item 5", title: "Title 5"),
  new TileItem(number: 6, subTitle: "Subtitle for item 6", title: "Title 6"),
  new TileItem(number: 7, subTitle: "Subtitle for item 7", title: "Title 7"),
  new TileItem(number: 8, subTitle: "Subtitle for item 8", title: "Title 8"),
  new TileItem(number: 9, subTitle: "Subtitle for item 9", title: "Title 9"),
  new TileItem(number: 10, subTitle: "Subtitle for item 10", title: "Title 10")
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Dark Mode")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(items[i].title),
            subtitle: Text(items[i].subTitle),
            trailing: IconButton(
              icon: Icon(
                Icons.tune,
                color: Theme.of(context).accentColor,
              ),
              onPressed: null,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
