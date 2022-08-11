import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
  const Komputer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Column(
          children: [
            Text("Komputer", style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(10.0),),
            Icon(Icons.computer, size: 90.0,)

          ],
        ),
      ),
    );
  }
}
