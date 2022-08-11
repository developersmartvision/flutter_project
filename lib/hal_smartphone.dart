import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Column(
          children: [
            Text("SmartPhone", style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(10.0),),
            Image(image: NetworkImage("https://images.bisnis-cdn.com/posts/2022/03/28/1515608/smartphone-terbaik-2021-redmi-note-10-pro-max.jpg"),width: 200.0,)

          ],
        ),
      ),
    );
  }
}
