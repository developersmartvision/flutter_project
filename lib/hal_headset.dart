import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Column(
          children: [
            Text("Headset", style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(10.0),),
            Icon(Icons.headset, size: 90.0,)

          ],
        ),
      ),
    );
  }
}
