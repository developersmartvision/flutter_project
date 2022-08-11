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
            Icon(Icons.smartphone, size: 90.0,)

          ],
        ),
      ),
    );
  }
}
