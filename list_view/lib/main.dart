import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Json Data Listview",
    home: Home(data: List<String>.generate(300, (i) => "ini data ke $i"),),
  ));
}

class Home extends StatelessWidget {
  final List<String> data;

  Home({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: Icon (Icons.widgets),
              title: Text("${data[index]}"),
            );
          },
        ),
      ),
    );
  }
}
