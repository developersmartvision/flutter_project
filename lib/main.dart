import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Dashboard",
    home: HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.home, color: Colors.orange),
        title: Center(child: Text("Dashboard")),
        actions:[Icon(Icons.search)],
      ),
      body: Container(
        child: Row(
          children:[
            Icon(Icons.local_parking, size: 70.0, color: Colors.redAccent),
            Column(children: [
              Icon(Icons.local_parking, size: 70.0, color: Colors.blue),
              Icon(Icons.local_parking, size: 70.0, color: Colors.blue),
              Icon(Icons.local_parking, size: 70.0, color: Colors.blue)
            ],),
            Icon(Icons.local_parking, size: 70.0, color: Colors.blue)

          ],
        ),
      ),
    );
  }
}
