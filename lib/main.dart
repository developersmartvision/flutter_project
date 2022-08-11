import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Card & Parsing",
    home: HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Card & Parsing"),
          backgroundColor: Colors.lightGreenAccent),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardSaya(
                icons: Icons.home, texts: "Home", warna: Colors.blueAccent),
            CardSaya(
                icons: Icons.local_parking, texts: "Location", warna: Colors.blueAccent),
            CardSaya(icons: Icons.supervised_user_circle, texts: "Juru Parkir", warna: Colors.blueAccent)
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({required this.icons, required this.texts, required this.warna});

  final IconData icons;
  final String texts;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Card(
        color: Colors.redAccent,
        child: Column(
          children: [
            Icon(icons, size: 50.0, color: warna),
            Text(
              texts,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
